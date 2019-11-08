/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author Natasha
 */
public class TableController {
    public ResultSet get(Connection con){
        try{
            MainController mc = new MainController();
            String sql = "SELECT * FROM tbl_category";
            
            return mc.get(con, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public ResultSet get2(Connection con){
        try{
            MainController mc = new MainController();
            String sql = "SELECT * FROM tbl_shelf";
            
            return mc.get(con, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public ResultSet get3(Connection con){
        try{
            MainController mc = new MainController();
            String sql = "SELECT * FROM tbl_publisher";
            
            return mc.get(con, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public ResultSet get4(Connection con){
        try{
            MainController mc = new MainController();
            String sql = "SELECT * FROM tbl_borrow";
            
            return mc.get(con, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public ResultSet get5(Connection con){
        try{
            MainController mc = new MainController();
            String sql = "SELECT * FROM tbl_return";
            
            return mc.get(con, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
}
