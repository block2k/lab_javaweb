/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Article;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Article getRecentNews() {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT TOP 1 * FROM Article ORDER BY PublishedDate DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate"));
            }

        } // Handle any errors that may have occurred. 
        catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                rs.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                ps.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                conn.close();
            } catch (Exception e) {
                /* Ignored */ }
        }
        return null;
    }

    public List<Article> getTop5RecentNews() {
        List<Article> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT TOP 5 * FROM Article WHERE PublishedDate != ( SELECT MAX(PublishedDate)FROM Article ) ORDER BY PublishedDate DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                list.add(new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate")));
            }

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                rs.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                ps.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                conn.close();
            } catch (Exception e) {
                /* Ignored */ }
        }
        return list;
    }

    public Article viewArticleById(String id) {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Article WHERE ID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate"));
            }

        } // Handle any errors that may have occurred. 
        catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                rs.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                ps.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                conn.close();
            } catch (Exception e) {
                /* Ignored */ }
        }
        return null;
    }

    public int countTotalSearchArticle(String text) {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT COUNT(*) FROM Article WHERE Title LIKE ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + text + "%");
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return rs.getInt(1);
            }

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                rs.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                ps.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                conn.close();
            } catch (Exception e) {
                /* Ignored */ }
        }
        return 0;
    }

    public List<Article> pagingSearchArticle(String text, int index) {
        List<Article> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT  * FROM Article where Title like ?\n"
                + "ORDER BY (SELECT NULL)\n"
                + "OFFSET (?-1)*3 ROWS FETCH NEXT 3 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + text + "%");
            ps.setInt(2, index);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                list.add(new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate")));
            }

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                rs.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                ps.close();
            } catch (Exception e) {
                /* Ignored */ }
            try {
                conn.close();
            } catch (Exception e) {
                /* Ignored */ }
        }
        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.getRecentNews().getContent());
    }
}
