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
public class VideoModel {
     String id,type,title,code;
     KoneksiDB db = null;

    public VideoModel() {
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
        public List DataVideo() {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from video order by type asc";
            rs = db.ambilData(sql);

            while (rs.next()) {
                VideoModel cm = new VideoModel();
                cm.setId(rs.getString("id_video"));
                cm.setType(rs.getString("type"));
                cm.setTitle(rs.getString("title"));                
                cm.setCode(rs.getString("code"));
                data.add(cm);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
    public void CreateVideo(String type, String title, String code){
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "insert into video(type,title,code) values(?,?,?)";
            ps = db.ExecuteQuery(sql);
            ps.setString(1, type);
            ps.setString(2, title);
            ps.setString(3, code);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);

        } catch(Exception a) {
            System.out.println("Terjadi kesalahan cari login admin, pada :\n" + a);
        }
    }
        public void DeleteVideo(String id) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "delete from video where id_video ="+id;
            ps=db.ExecuteQuery(sql);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
    }
    public void UpdateVideo(String type, String title, String code, String id){
        ResultSet rs = null;
        PreparedStatement ps = null;
        int updateQuery = 0;
        try {
            String sql = "update video set type=?, title=?, code=? where id_video="+id;
            ps = db.ExecuteQuery(sql);
            ps.setString(1, type);
            ps.setString(2, title);
            ps.setString(3, code);
            updateQuery = ps.executeUpdate();
            db.diskonek(rs);

        } catch(Exception a) {
            System.out.println("Terjadi kesalahan cari login admin, pada :\n" + a);
        }
    }
    public List SearchVideo(String type) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from video where type = '" + type + "'";
            rs = db.ambilData(sql);

            while (rs.next()) {
                VideoModel cm = new VideoModel();
                cm.setId(rs.getString("id_video"));
                cm.setType(rs.getString("type"));
                cm.setTitle(rs.getString("title"));                
                cm.setCode(rs.getString("code"));
                data.add(cm);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
        public List OneVideo(String id) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from video where id_video = '" + id + "'";
            rs = db.ambilData(sql);

            while (rs.next()) {
                VideoModel cm = new VideoModel();
                cm.setId(rs.getString("id_video"));
                cm.setType(rs.getString("type"));
                cm.setTitle(rs.getString("title"));                
                cm.setCode(rs.getString("code"));
                data.add(cm);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
}