package System.DAO;

import System.Util.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AssignProjectDAO {
    public boolean assignProject(int projectId, String projectName, String employeeId, String description, java.sql.Date deadline) {
        String projectQuery = "INSERT INTO Projects (project_id, project_name, employee_id, description, deadline) VALUES (?, ?, ?, ?, ?)";
        String taskQuery = "INSERT INTO Tasks (employee_id, project_id, project_name, task_date, start_time, end_time, task_category, description, approval_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DbUtil.getConnection();
             PreparedStatement projectStatement = connection.prepareStatement(projectQuery);
             PreparedStatement taskStatement = connection.prepareStatement(taskQuery)) {

            projectStatement.setInt(1, projectId);
            projectStatement.setString(2, projectName);
            projectStatement.setString(3, employeeId);
            projectStatement.setString(4, description);
            projectStatement.setDate(5, deadline);

            int projectResult = projectStatement.executeUpdate();

            if (projectResult > 0) {
                taskStatement.setString(1, employeeId);
                taskStatement.setInt(2, projectId);
                taskStatement.setString(3, projectName);
                taskStatement.setDate(4, new java.sql.Date(System.currentTimeMillis()));
                taskStatement.setTime(5, java.sql.Time.valueOf("00:00:00"));
                taskStatement.setTime(6, java.sql.Time.valueOf("00:00:00"));
                taskStatement.setString(7, "N/A");
                taskStatement.setString(8, description);
                taskStatement.setString(9, "Pending");

                int taskResult = taskStatement.executeUpdate();
                return taskResult > 0;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
