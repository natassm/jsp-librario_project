/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.BorrowModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Natasha
 */
public class BorrowController {
    public ResultSet get(Connection con){
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
    
    public ResultSet show(Connection con, BorrowModel borrowModel){
        try{
            String sql = "SELECT * FROM tbl_borrow WHERE borrowID = ?";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, borrowModel.getId());
            
            MainController mc = new MainController();
            return mc.show(con, map, sql);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public Boolean store(BorrowModel borrowModel){
        try{
            String sql = "INSERT INTO tbl_borrow (bookID, userID, rentDate,"
                    + "returnDate) values (?,?,?,?)";
            Map<Integer, Object> map = new HashMap<>();
            map.put(1, borrowModel.getBookID());
            map.put(2, borrowModel.getUserID());
            map.put(3, borrowModel.getRentDate());
            map.put(4, borrowModel.getReturnDate());
            
            MainController mc = new MainController();
            boolean res = mc.preparedStatment(map, sql);
            return res;
            
        }catch(Exception e){
            System.err.println(e.getMessage());
            return false;
        }
    }
    
//    public Boolean update(BorrowModel borrowModel){
//        try{
//            String sql = "UPDATE tbl_borrow SET bookTitle = ?, bookAuthor = ?, bookAmount = ?,"
//                    + "categoryID = ?, shelfID = ?, publisherID = ?, publicationYear = ?"
//                    + "WHERE bookID = ?";
//            
//            Map<Integer, Object> map = new HashMap<>();
//            map.put(1, bookModel.getTitle());
//            map.put(2, bookModel.getAuthor());
//            map.put(3, bookModel.getAmount());
//            map.put(4, bookModel.getCategory());
//            map.put(5, bookModel.getShelf());
//            map.put(6, bookModel.getPublisher());
//            map.put(7, bookModel.getPublicationYear());
//            map.put(8, bookModel.getId());
//            
//            MainController mc = new MainController();
//            boolean res = mc.preparedStatment(map, sql);
//            return res;
//        }catch(Exception e){
//            System.err.println(e.getMessage());
//            return false;
//        }
//    }
//    
//    public Boolean delete(BookModel bookModel){
//        try{
//            String sql = "DELETE FROM tbl_book WHERE bookID = ?";
//            
//            Map<Integer, Object> map = new HashMap<>();
//            map.put(1, bookModel.getId());
//            
//            MainController mc = new MainController();
//            boolean res = mc.preparedStatment(map, sql);
//            return res;
//        }catch(Exception e){
//            System.err.println(e.getMessage());
//            return false;
//        }
//    }
}
