package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Utils.DBUtils;
import dto.UserDTO;

public class UserDAO {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    private void closeConnection() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (ps != null) {
            ps.close();
        }
        if (con != null) {
            con.close();
        }
    }

    public UserDTO checkLogin(String userName, String password) throws SQLException, Exception {
        UserDTO user = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select *  from [User] where UserName = ? and Password = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, userName);
                ps.setString(2, password);
                rs = ps.executeQuery();
                if (rs.next()) {
                    user = new UserDTO(rs.getString("UserName"), rs.getString("Password"), rs.getInt("RoleID"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return user;
    }

    public UserDTO register(String userName, String password, String fullName, String phone, String address) throws SQLException, Exception {
        UserDTO user = null;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "insert into [User] (UserName, Password, FullName, Phone, Address, RoleID) values (?,?,?,?,?, 3)";
                ps = con.prepareStatement(sql);
                ps.setString(1, userName);
                ps.setString(2, password);
                ps.setString(3, fullName);
                ps.setString(4, phone);
                ps.setString(5, address);
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected > 0) {
                    user = new UserDTO(userName, password, 3);
                    return user;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return user;
    }
}
