/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author killua
 */
public class CourseModel {
     String id,type,image;
     KoneksiDB db = null;

    public CourseModel() {
        db = new KoneksiDB();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
        public List DataCourse() {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from course";
            rs = db.ambilData(sql);

            while (rs.next()) {
                CourseModel cm = new CourseModel();
                cm.setId(rs.getString("id_course"));
                cm.setType(rs.getString("type"));
                cm.setImage(rs.getString("image"));
                data.add(cm);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
    public void CreateCourse(String type, String image){
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "insert into course(type,image) values(?,?)";
            ps = db.ExecuteQuery(sql);
            ps.setString(1, type);
            ps.setString(2, image);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);

        } catch(Exception a) {
            System.out.println("Terjadi kesalahan cari login admin, pada :\n" + a);
        }
    }
        public void DeleteCourse(String id) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "delete from course where id_course ="+id;
            ps=db.ExecuteQuery(sql);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
    }
    public void UpdateCourse(String type, String image, String id){
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "update course set type=?, image=? where id_course="+id;
            ps = db.ExecuteQuery(sql);
            ps.setString(1, type);
            ps.setString(2, image);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);

        } catch(Exception a) {
            System.out.println("Terjadi kesalahan cari login admin, pada :\n" + a);
        }
    }
    public List SearchCourse(String id) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from course where id_course = " + id;
            rs = db.ambilData(sql);

            while (rs.next()) {
                CourseModel cm = new CourseModel();
                cm.setId(rs.getString("id_course"));
                cm.setType(rs.getString("type"));
                cm.setImage(rs.getString("image"));
                data.add(cm);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
}