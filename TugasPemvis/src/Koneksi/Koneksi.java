package Koneksi; 
import java.sql.*; 

public class Koneksi { 
    private Connection Koneksi; 
    public Connection connect(){ 
        try{ 
            Class.forName("com.mysql.jdbc.Driver"); 
            System.out.println("berhasil konek"); 
        } 
        catch (ClassNotFoundException ex) { 
            System.out.println("gagal koneksi"+ex); 
        } 
        String url = "jdbc:mysql://localhost/penjualan"; 
        try{ 
            Koneksi = DriverManager.getConnection(url, "root", ""); 
            System.out.println(String.format("Connected to database %s " + "successfully.", Koneksi.getCatalog())); 
        } 
        catch (SQLException ex) { 
            System.out.println("gagal koneksi database"+ex); 
        } 
        return Koneksi; 
    } 
}