/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DBConnection.DBConnection;
import Model.BookModel;
import Model.UserModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Natasha
 */
public class AuthController {
    public ArrayList login(UserModel userModel){
       try{
           String sql = "SELECT * FROM tbl_user WHERE username = ?";
           DBConnection dbcon = new DBConnection();
           Connection con = dbcon.open();
           
           Map<Integer, Object> map = new HashMap<>();
           map.put(1, userModel.getUsername());
           
           MainController mc = new MainController();
           ResultSet rs = mc.show(con, map, sql);
           
           Boolean check = false;
           ArrayList data = new ArrayList();
           while(rs.next()){
               check = rs.getString("password").equals(userModel.getPassword());
               if(check){
                   data.add(rs.getString("id"));
                   data.add(rs.getString("name"));
                   data.add(rs.getString("email"));
                   data.add(rs.getString("role"));
               }
           }
            con.close();
            return data;
       }catch(Exception e){
           System.out.println(e.getMessage());
           return null;
       }
    }
    
    public Boolean regis(UserModel userModel){
        try{
            String sql = "INSERT INTO tbl_user (username, name, email,"
                    + "password, role) values (?,?,?,?,?)";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, userModel.getUsername());
            map.put(2, userModel.getName());
            map.put(3, userModel.getEmail());
            map.put(4, userModel.getPassword());
            map.put(5, userModel.getRole());
            
            MainController mc = new MainController();
            boolean res = mc.preparedStatment(map, sql);
            return res;
            
        }catch(Exception e){
            System.err.println(e.getMessage());
            return false;
        }
    }
}
