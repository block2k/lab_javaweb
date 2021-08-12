package dal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.*;

public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //query viet hoa
    // get data theo ten cot
    public Account checkLogin(String username, String password) {
        // Create and execute an SQL statement that returns some data.
        String SQL = "SELECT * FROM Account WHERE username = ? AND [password] = ?;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return new Account(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("accountname"));
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

    public List<Department> getAllDepartment() {
        List<Department> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Department;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                list.add(new Department(rs.getInt("id"),
                        rs.getString("DepartmentName")));
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

    public Department getDepartmentById(int did) {
        List<Department> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Department WHERE id = ?;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, did);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return new Department(rs.getInt("id"),
                        rs.getString("DepartmentName"));
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

    public int getTotalRequestTodayByDepartment(int did) {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT COUNT(*) FROM Request WHERE department_id = ? AND date_created = ( SELECT CAST(GETDATE() AS DATE) ) AND [status] = 2;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, did);
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

    public int getTotalRequestLast2DayByDepartment(int did) {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT COUNT(*) FROM Request WHERE department_id = ? AND date_created != ( SELECT CAST(GETDATE() AS DATE) ) AND [status] = 2;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, did);
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

    // get request today by department id
    public List<Request> getRequestTodayByDid(int did) {
        List<Request> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Request WHERE department_id = ? AND date_created = ( SELECT CAST(GETDATE() AS DATE) ) AND [status] = 2;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, did);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add to list it.
            while (rs.next()) {
                list.add(new Request(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getDate("date_created"),
                        rs.getDate("date_closed"),
                        rs.getInt("status"),
                        rs.getInt("department_id"),
                        rs.getBoolean("detail")));
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

    public List<Request> getRequestLast2DayByDid(int did) {
        List<Request> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Request WHERE department_id = ? AND date_created != ( SELECT CAST(GETDATE() AS DATE) ) AND [status] = 2;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, did);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add to list it.
            while (rs.next()) {
                list.add(new Request(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getDate("date_created"),
                        rs.getDate("date_closed"),
                        rs.getInt("status"),
                        rs.getInt("department_id"),
                        rs.getBoolean("detail")));
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

    public List<Request> getRequestByDid(int did) {
        List<Request> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Request WHERE department_id = ?;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, did);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add to list it.
            while (rs.next()) {
                list.add(new Request(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getDate("date_created"),
                        rs.getDate("date_closed"),
                        rs.getInt("status"),
                        rs.getInt("department_id"),
                        rs.getBoolean("detail")));
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

    public List<Request> searchRequestByTitle(String txt) {
        List<Request> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Request WHERE title LIKE ?;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + txt + "%");
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add to list it.
            while (rs.next()) {
                list.add(new Request(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getDate("date_created"),
                        rs.getDate("date_closed"),
                        rs.getInt("status"),
                        rs.getInt("department_id"),
                        rs.getBoolean("detail")));
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

    //get selected request
    public Request getRequestByRequestId(int rid) {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Request WHERE id = ?;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, rid);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add to list it.
            while (rs.next()) {
                return new Request(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getDate("date_created"),
                        rs.getDate("date_closed"),
                        rs.getInt("status"),
                        rs.getInt("department_id"),
                        rs.getBoolean("detail"));
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

    public StudentRequest getStudentByRequestId(int rid) {
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Student_Request WHERE request_id = ?;";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, rid);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add to list it.
            while (rs.next()) {
                return new StudentRequest(rs.getString("student_id"),
                        rs.getString("student_name"),
                        rs.getInt("request_id"),
                        rs.getString("solution_school"),
                        rs.getString("request_content"));
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

    public void solveStudentRequest(String solution, String solveBy, int rid) {
        String sql = "UPDATE [dbo].[Student_Request]\n"
                + "   SET \n"
                + "      [solution_school] = ?\n"
                + "      ,[solved_by] = ?\n"
                + " WHERE request_id = ?";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, solution);
            ps.setString(2, solveBy);
            ps.setInt(3, rid);
            ps.executeQuery();
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

    public void solveRequest(Date dateClose, int status, int rid) {
        String sql = "UPDATE [dbo].[Request]\n"
                + "   SET \n"
                + "      [date_closed] = ?\n"
                + "      ,[status] = ?\n"
                + "      ,[detail] = 1\n"
                + " WHERE id = ?";
        try {
            conn = new context.DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setDate(1, dateClose);
            ps.setInt(2, status);
            ps.setInt(3, rid);
            ps.executeQuery();
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
        DAO dao = new DAO();
        System.out.println(dao.getStudentByRequestId(4).getStudentId());
    }
}
