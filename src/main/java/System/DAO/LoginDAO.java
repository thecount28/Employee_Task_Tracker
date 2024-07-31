package System.DAO;

import System.Util.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    public boolean validate(String username, String password, String role) {
        boolean status = false;

        try (Connection con = DbUtil.getConnection()) {
            String query = "SELECT * FROM Employees WHERE employee_id=? AND password=? AND role=?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, role);

                try (ResultSet rs = ps.executeQuery()) {
                    status = rs.next();
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
}
