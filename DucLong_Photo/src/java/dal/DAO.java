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
import model.*;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Introduction getIntroduction() {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM dbo.Introduction";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return new Introduction(rs.getString("IntroImage"),
                        rs.getString("IntroCaption"),
                        rs.getString("About"),
                        rs.getInt("ViewPage"));
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

    public List<Gallery> getTop3Gallery() {
        DAO dao = new DAO();
        List<Gallery> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT TOP 3 * FROM dbo.Gallery";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                List<Image> listimg = dao.getImageByGalleryId(rs.getInt("ID"));
                list.add(new Gallery(rs.getInt("ID"),
                        rs.getString("GalleryName"),
                        rs.getString("Picture"),
                        rs.getString("Description"), listimg));
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

    public Contact getContact() {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM dbo.Contact";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                return new Contact(rs.getString("Address"),
                        rs.getString("City"),
                        rs.getString("Country"),
                        rs.getString("Tel"),
                        rs.getString("Email"));
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

    public List<Image> getImageByGalleryId(int gid) {
        List<Image> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM dbo.Gallery_Image WHERE GalleryID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, gid);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                list.add(new Image(rs.getString("Image")));
            }
        } // Handle any errors that may have occurred.
        catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateViewPage() {
        // Create and execute an SQL statement that update data from database.
        String sql = "UPDATE [dbo].[Introduction] SET [ViewPage] = ViewPage + 1;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        } // Handle any errors that may have occurred.
        catch (Exception e) {
            System.out.println(e);
        }
    }

    public Gallery getGalleryById(int gid) {
        DAO dao = new DAO();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM dbo.Gallery WHERE ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, gid);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                List<Image> listimg = dao.getImageByGalleryId(rs.getInt("ID"));
                return new Gallery(rs.getInt("ID"),
                        rs.getString("GalleryName"),
                        rs.getString("Picture"),
                        rs.getString("Description"), 
                        listimg);
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

    public int countTotalGallery() {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT COUNT(*) FROM dbo.Gallery";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
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

    public List<Gallery> pagingGallery(int index) {
        DAO dao = new DAO();
        List<Gallery> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM dbo.Gallery ORDER BY (SELECT NULL) OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 3);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                List<Image> listimg = dao.getImageByGalleryId(rs.getInt("ID"));
                list.add(new Gallery(rs.getInt("ID"),
                        rs.getString("GalleryName"),
                        rs.getString("Picture"),
                        rs.getString("Description"), listimg));
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
        System.out.println(dao.getGalleryById(1).getList().get(0).getImage());
    }
}
