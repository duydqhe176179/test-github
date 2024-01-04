/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Acc;
import model.Account;
import model.Info;
import model.Register;
import model.oldStudent;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    PreparedStatement stm;
    ResultSet rs;
    List<Register> listRegister = new ArrayList<>();
    List<Info> listInfo = new ArrayList<>();
    List<oldStudent> listStudent = new ArrayList<>();

    public boolean addRegister(Register r) {
        try {
            String strSelect = "INSERT INTO dbo.register\n"
                    + "(\n"
                    + "    name,\n"
                    + "    mobile,\n"
                    + "    email,\n"
                    + "    birthday,\n"
                    + "    city,\n"
                    + "    thpt,\n"
                    + "    face,\n"
                    + "	tu_van ,\n"
                    + "	tuyen_sinh ,\n"
                    + "	xet ,\n"
                    + "	thi\n"
                    + ") VALUES (?, ?, ?, ?, ?, ?,?,?,?,?,?)";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, r.getName());
            stm.setString(2, r.getMobile());
            stm.setString(3, r.getEmail());
            stm.setString(4, r.getBirthday());
            stm.setString(5, r.getCity());
            stm.setString(6, r.getThpt());
            stm.setString(7, r.getFace());

            stm.setInt(8, r.getTu_van());
            stm.setInt(9, r.getTuyen_sinh());
            stm.setInt(10, r.getXet());
            stm.setInt(11, r.getThi());

            int rowsAffected = stm.executeUpdate();

            // Close the prepared statement
            stm.close();

            return rowsAffected > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public boolean addInfo(Info r) {
        try {
            String strSelect = "  INSERT INTO [dbo].[info]\n"
                    + "           ([image]\n"
                    + "           ,[title]\n"
                    + "           ,[content])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, r.getImage());
            stm.setString(2, r.getTitle());
            stm.setString(3, r.getContent());

            int rowsAffected = stm.executeUpdate();

            // Close the prepared statement
            stm.close();

            return rowsAffected > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public boolean addAccount(String user, String pass) {
        try {
            String sql = "  INSERT INTO dbo.Account\n"
                    + "  (\n"
                    + "      username,\n"
                    + "      password,\n"
                    + "      role\n"
                    + "  )\n"
                    + "  VALUES (?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            stm.setString(3, "0");

            int rowsAffected = stm.executeUpdate();

            // Close the prepared statement
            stm.close();

            return rowsAffected > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public boolean addAcc(Acc a) {
        try {
            addAccount(a.getUser(),a.getPass());
            String strSelect = "  INSERT INTO dbo.account_information\n"
                    + "  (\n"
                    + "      username,\n"
                    + "      name,\n"
                    + "      address,\n"
                    + "      birthday,\n"
                    + "      thpt\n"
                    + "      \n"
                    + "  )\n"
                    + "  VALUES (?,?,?,?,?)";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, a.getUser());
            stm.setString(2, a.getName());
            stm.setString(3, a.getAddress());
            stm.setString(4, a.getBirth());
            stm.setString(5, a.getThpt());

            int rowsAffected = stm.executeUpdate();

            // Close the prepared statement
            stm.close();

            return rowsAffected > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public boolean addoldStudent(oldStudent o) {
        try {
            String strSelect = "  INSERT INTO dbo.oldStudent\n"
                    + "(\n"
                    + "    image,\n"
                    + "    review,\n"
                    + "    name\n"
                    + ")\n"
                    + "VALUES (?,?,?)";
            stm = connection.prepareStatement(strSelect);
            stm.setString(1, o.getImage());
            stm.setString(2, o.getReview());
            stm.setString(3, o.getName());

            int rowsAffected = stm.executeUpdate();

            // Close the prepared statement
            stm.close();

            return rowsAffected > 0;
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
    }

    public Info getInfoById(int id) {
        try {
            String sql = "SELECT * FROM dbo.info\n"
                    + "  WHERE id=?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            if (rs.next()) {
                String image = rs.getString(1);
                String title = rs.getString(2);
                String content = rs.getString(3);

                Info i = new Info(image, title, content, id);
                return i;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public oldStudent getOldById(int id) {
        try {
            String sql = "SELECT * FROM dbo.oldStudent\n"
                    + "WHERE id=?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            if (rs.next()) {
                String image = rs.getString(1);
                String review = rs.getString(2);
                String name = rs.getString(3);

                oldStudent o = new oldStudent(image, review, name, id);
                return o;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public List<Info> getAllInfo() {
        try {
            String strSelect = "select * from info";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                String image = rs.getString(1);
                String title = rs.getString(2);
                String content = rs.getString(3);
                int id = rs.getInt(4);

                Info i = new Info(image, title, content, id);
                listInfo.add(i);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listInfo;
    }

    public List<oldStudent> getAllOldStudent() {
        try {
            String strSelect = "SELECT * FROM dbo.oldStudent";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                String image = rs.getString(1);
                String review = rs.getString(2);
                String name = rs.getString(3);
                int id = rs.getInt(4);

                oldStudent o = new oldStudent(image, review, name, id);
                listStudent.add(o);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listStudent;
    }

    public Account Login(String username, String password) {
        String sql = "SELECT * FROM dbo.Account\n"
                + "WHERE username=? AND password=?";
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
                String user = rs.getString(1);
                String pass = rs.getString(2);
                int role = rs.getInt(3);
                Account a = new Account(user, pass, role);
                return a;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public List<Register> getAllRegister() {
        try {
            String strSelect = "SELECT * FROM dbo.register";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String mobile = rs.getString(3);
                String email = rs.getString(4);
                String birthday = rs.getString(5);
                String city = rs.getString(6);
                String thpt = rs.getString(7);
                String face = rs.getString(8);
                int tu_van = rs.getInt(9);
                int tuyen_sinh = rs.getInt(10);
                int xet = rs.getInt(11);
                int thi = rs.getInt(12);

                Register i = new Register(id, name, mobile, email, birthday, city, thpt, face, tu_van, tuyen_sinh, xet, thi);
                listRegister.add(i);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listRegister;
    }

    public boolean deleteRegister(String id) {
        try {
            String strDelete = "DELETE FROM dbo.register WHERE id=?";
            stm = connection.prepareStatement(strDelete);
            stm.setString(1, id);

            int rowAffected = stm.executeUpdate();

            return rowAffected > 0;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean deleteInfo(String id) {
        try {
            String strDelete = "  DELETE FROM dbo.info WHERE id=?";
            stm = connection.prepareStatement(strDelete);
            stm.setString(1, id);

            int rowAffected = stm.executeUpdate();

            return rowAffected > 0;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean deleteOldStudent(String id) {
        try {
            String strDelete = "  DELETE FROM dbo.oldStudent\n"
                    + "WHERE id=?";
            stm = connection.prepareStatement(strDelete);
            stm.setString(1, id);

            int rowAffected = stm.executeUpdate();

            return rowAffected > 0;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean updateInfo(int id, String image, String title, String content) {
        try {
            String strUPDATE = "UPDATE dbo.info\n"
                    + "SET image =?, title=? ,content=?\n"
                    + "WHERE id=?";
            stm = connection.prepareStatement(strUPDATE);
            stm.setString(1, image);
            stm.setString(2, title);
            stm.setString(3, content);
            stm.setInt(4, id);

            int rowsAffected = stm.executeUpdate();
            stm.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            System.out.println("loi, ko update dc");
            return false;
        }
    }

    public boolean updateOld(int id, String image, String review, String name) {
        try {
            String strUPDATE = "UPDATE dbo.oldStudent\n"
                    + "SET image=?, review=?,name=?\n"
                    + "WHERE id=?";
            stm = connection.prepareStatement(strUPDATE);
            stm.setString(1, image);
            stm.setString(2, review);
            stm.setString(3, name);
            stm.setInt(4, id);

            int rowsAffected = stm.executeUpdate();
            stm.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            System.out.println("loi, ko update dc");
            return false;
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.addAcc(new Acc("ddd", "123", "duy", "sdd", "2002-02-02", "lll")));
    }
}
