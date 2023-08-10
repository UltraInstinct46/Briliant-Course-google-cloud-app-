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
public class DonateModel {
     String id,name,amount,message,date;
     KoneksiDB db = null;
     
     public DonateModel() {
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
    
    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }
    
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
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
        public List DataDonate() {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from donation";
            rs = db.ambilData(sql);

            while (rs.next()) {
                DonateModel am = new DonateModel();
                am.setId(rs.getString("id_donation"));
                am.setName(rs.getString("name"));
                am.setAmount(rs.getString("amount"));                
                am.setMessage(rs.getString("message"));
                am.setDate(rs.getString("date"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login admin, pada :\n" + a);
        }
        return data;
    }
}
