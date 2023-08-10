/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
/**
 *
 * @author killua
 */
public class UserModel {
     String id,name,email,password,roles;
     KoneksiDB db = null;

    public UserModel() {
        db = new KoneksiDB();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getRoles(){
        return roles;
    }
    public void setRoles(String roles){
        this.roles = roles;
    }
        public List DataUser() {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from user";
            rs = db.ambilData(sql);

            while (rs.next()) {
                UserModel am = new UserModel();
                am.setId(rs.getString("id_user"));
                am.setName(rs.getString("name"));
                am.setEmail(rs.getString("email"));                
                am.setPassword(rs.getString("password"));
                am.setRoles(rs.getString("roles"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
    public List LoginUser(String email, String password) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from user where email='" + email + "' and password='" + password + "'";
            rs = db.ambilData(sql);

            while (rs.next()) {
                UserModel am = new UserModel();
                am.setId(rs.getString("id_user"));
                am.setName(rs.getString("name"));
                am.setEmail(rs.getString("email"));                
                am.setPassword(rs.getString("password"));
                am.setRoles(rs.getString("roles"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
    public void CreateUser(String name, String email, String password, String roles){
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "insert into user(name,email,password,roles) values(?,?,?,?)";
            ps = db.ExecuteQuery(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, roles);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);

        } catch(Exception a) {
            System.out.println("Terjadi kesalahan cari login admin, pada :\n" + a);
        }
    }
        public void DeleteUser(String id) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "delete from user where id_user ="+id;
            ps=db.ExecuteQuery(sql);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
    }
    public void UpdateUser(String name, String email, String password, String roles, String id){
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "update user set name=?, email=?, password=?,roles=? where id_user="+id;
            ps = db.ExecuteQuery(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, roles);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);

        } catch(Exception a) {
            System.out.println("Terjadi kesalahan cari login admin, pada :\n" + a);
        }
    }
    public List SearchUser(String id) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from user where id_user = " + id;
            rs = db.ambilData(sql);

            while (rs.next()) {
                UserModel am = new UserModel();
                am.setId(rs.getString("id_user"));
                am.setName(rs.getString("name"));
                am.setEmail(rs.getString("email"));                
                am.setPassword(rs.getString("password"));
                am.setRoles(rs.getString("roles"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
    
       public void Donate(String name, String amount, String message){
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "insert into donation(name,amount,message) values(?,?,?)";
            ps = db.ExecuteQuery(sql);
            ps.setString(1, name);
            ps.setString(2, amount);
            ps.setString(3, message);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);

        } catch(Exception a) {
            System.out.println("Terjadi kesalahan cari login admin, pada :\n" + a);
        }
    }
}