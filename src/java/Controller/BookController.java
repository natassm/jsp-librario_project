/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.BookModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Natasha
 */
public class BookController {
    public ResultSet get(Connection con){
        try{
            MainController mc = new MainController();
            String sql = "SELECT * FROM tbl_book2";
            
            return mc.get(con, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public ResultSet show(Connection con, BookModel bookModel){
        try{
            String sql = "SELECT * FROM tbl_book2 WHERE bookID = ?";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, bookModel.getId());
            
            MainController mc = new MainController();
            return mc.show(con, map, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public Boolean store(BookModel bookModel){
        try{
            String sql = "INSERT INTO tbl_book2 (bookTitle, bookAuthor,"
                    + "bookCategory, bookShelf, bookPublisher) values (?,?,?,?,?)";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, bookModel.getTitle());
            map.put(2, bookModel.getAuthor());
            map.put(3, bookModel.getCategory());
            map.put(4, bookModel.getShelf());
            map.put(5, bookModel.getPublisher());
            
            MainController mc = new MainController();
            boolean res = mc.preparedStatment(map, sql);
            return res;
            
        }catch(Exception e){
            System.err.println(e.getMessage());
            return false;
        }
    }
    
    public Boolean update(BookModel bookModel){
        try{
            String sql = "UPDATE tbl_book2 SET bookTitle = ?, bookAuthor = ?,"
                    + "bookCategory = ?, bookShelf = ?, bookPublisher = ?,"
                    + "WHERE bookID = ?";
            
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, bookModel.getTitle());
            map.put(2, bookModel.getAuthor());
            map.put(3, bookModel.getCategory());
            map.put(4, bookModel.getShelf());
            map.put(5, bookModel.getPublisher());
            map.put(6, bookModel.getId());
            
            MainController mc = new MainController();
            boolean res = mc.preparedStatment(map, sql);
            return res;
        }catch(Exception e){
            System.err.println(e.getMessage());
            return false;
        }
    }
    
    public Boolean delete(BookModel bookModel){
        try{
            String sql = "DELETE FROM tbl_book2 WHERE bookID = ?";
            
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, bookModel.getId());
            
            MainController mc = new MainController();
            boolean res = mc.preparedStatment(map, sql);
            return res;
        }catch(Exception e){
            System.err.println(e.getMessage());
            return false;
        }
    }
    
    
}
