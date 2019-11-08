/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Natasha
 */
public class DBConnection {
    private Connection con = null;
    
    public Connection open()
    {   
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/librarioproject";
            String user = "root";
            String pass = "";
            String db = "librarioproject";
            
            con = DriverManager.getConnection(url, user, pass);
        }catch (Exception e){
            System.err.println(e);
            return null;
        }return con;
    }
}
