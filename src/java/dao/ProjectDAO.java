package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Utils.DBUtils;
import dto.ProjectDTO;
import java.util.ArrayList;

public class ProjectDAO {

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

    public ArrayList<ProjectDTO> Currently() throws SQLException, Exception {
        ArrayList<ProjectDTO> listCurrent = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select ProjectName, Address, Description, Status, Investor, imgPath from Project where Status like N'Đang mở bán'";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    ProjectDTO list = new ProjectDTO(rs.getString("ProjectName"), rs.getString("Address"), rs.getString("Description"), rs.getString("Status"), rs.getString("Investor"), rs.getString("imgPath"));
                    listCurrent.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listCurrent;
    }

    public ArrayList<ProjectDTO> Soon() throws SQLException, Exception {
        ArrayList<ProjectDTO> listSoon = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select ProjectName, Address, Description, Status, Investor, imgPath from Project where Status like N'Sắp mở bán'";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    ProjectDTO list = new ProjectDTO(rs.getString("ProjectName"), rs.getString("Address"), rs.getString("Description"), rs.getString("Status"), rs.getString("Investor"), rs.getString("imgPath"));
                    listSoon.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listSoon;
    }

    public ArrayList<ProjectDTO> Progress() throws SQLException, Exception {
        ArrayList<ProjectDTO> listProgress = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select ProjectName, Address, Description, Status, Investor, imgPath from Project where Status like N'Đang xây dựng'";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    ProjectDTO list = new ProjectDTO(rs.getString("ProjectName"), rs.getString("Address"), rs.getString("Description"), rs.getString("Status"), rs.getString("Investor"), rs.getString("imgPath"));
                    listProgress.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listProgress;
    }

    public ArrayList<ProjectDTO> listNameProject() throws SQLException, Exception {
        ArrayList<ProjectDTO> listName = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select ProjectID, ProjectName from Project";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    ProjectDTO list = new ProjectDTO(rs.getInt("ProjectID"), rs.getString("ProjectName"));
                    listName.add(list);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listName;
    }

    public ArrayList<ProjectDTO> getCurrentStatusProject(int projectId) throws SQLException, Exception {
        ArrayList<ProjectDTO> currentStatusProject = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select ProjectName, Address, Description, Status, Investor, imgPath from Project where ProjectID = ? and Status like N'Đang mở bán'";
                ps = con.prepareStatement(sql);
                ps.setInt(1, projectId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    ProjectDTO project = new ProjectDTO(rs.getString("ProjectName"), rs.getString("Address"), rs.getString("Description"), rs.getString("Status"), rs.getString("Investor"), rs.getString("imgPath"));
                    currentStatusProject.add(project);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return currentStatusProject;
    }

    public ArrayList<ProjectDTO> getSoonStatusProject(int projectId) throws SQLException, Exception {
        ArrayList<ProjectDTO> soonStatusProject = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select ProjectName, Address, Description, Status, Investor, imgPath from Project where ProjectID = ? and Status like N'Sắp mở bán'";
                ps = con.prepareStatement(sql);
                ps.setInt(1, projectId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    ProjectDTO project = new ProjectDTO(rs.getString("ProjectName"), rs.getString("Address"), rs.getString("Description"), rs.getString("Status"), rs.getString("Investor"), rs.getString("imgPath"));
                    soonStatusProject.add(project);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return soonStatusProject;
    }

    public ArrayList<ProjectDTO> getProcessStatusProject(int projectId) throws SQLException, Exception {
        ArrayList<ProjectDTO> processStatusProject = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "select ProjectName, Address, Description, Status, Investor, imgPath from Project where ProjectID = ? and Status like N'Đang xây dựng'";
                ps = con.prepareStatement(sql);
                ps.setInt(1, projectId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    ProjectDTO project = new ProjectDTO(rs.getString("ProjectName"), rs.getString("Address"), rs.getString("Description"), rs.getString("Status"), rs.getString("Investor"), rs.getString("imgPath"));
                    processStatusProject.add(project);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return processStatusProject;
    }

}
