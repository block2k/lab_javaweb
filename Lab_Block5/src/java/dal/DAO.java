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
import model.Product;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct(int pageIndex) throws Exception {
        List<Product> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Product ORDER BY ID OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (pageIndex - 1) * 3);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                list.add(new Product(rs.getInt("ID"), rs.getString("Name"), rs.getString("Image"), rs.getDouble("Price")));
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

    public List<Product> searchProduct(int pageIndex, String text) throws Exception {
        List<Product> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Product WHERE Name LIKE ? ORDER BY ID OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + text + "%");
            ps.setInt(2, (pageIndex - 1) * 3);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                list.add(new Product(rs.getInt("ID"), rs.getString("Name"), rs.getString("Image"), rs.getDouble("Price")));
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

    public int countTotalProduct(String text) throws Exception {
        // Create and execute an SQL statement 
        String sql = "SELECT COUNT(*) FROM Product WHERE Name LIKE ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + text + "%");
            rs = ps.executeQuery();
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

    public String getViewPage() throws Exception {
        // Create and execute an SQL statement 
        String sql = "SELECT * FROM Introduction";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                return String.format("%05d", rs.getInt("ViewPage"));
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
        return "Can't get view";
    }

    public int countTotalProduct() throws Exception {
        // Create and execute an SQL statement 
        String sql = "SELECT COUNT(*) FROM Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
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

    public void addProduct(String name, String image, double price) throws Exception {
        // Create and execute an SQL statement 
        String sql = "INSERT INTO [dbo].[Product] ([Name] ,[Image] ,[Price]) VALUES (?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setDouble(3, price);
            ps.executeUpdate();
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
    }

    public void deleteProduct(String id) throws Exception {
        // Create and execute an SQL statement 
        String sql = "DELETE FROM [dbo].[Product] WHERE ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
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
    }

    public void editProduct(String id, String name, String image, String price) throws Exception {
        // Create and execute an SQL statement 
        String sql = "UPDATE [dbo].[Product] SET [Name] = ? ,[Image] = ? ,[Price] = ? WHERE ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, id);
            ps.executeUpdate();
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
    }

    public static void main(String[] args) {
        try {
            DAO dao = new DAO();
            System.out.println(dao.getViewPage());
        } catch (Exception e) {
        }
    }
}
