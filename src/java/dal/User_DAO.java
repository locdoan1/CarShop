/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import enity.ID_Product;
import enity.User;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author Admin
 */
public class User_DAO extends GenericDAO<User> {

    @Override
    public List<User> findAll() {
        return queryGenericDAO(User.class);
    }

    @Override
    public int insert(User t) {
        return insertGenericDAO(t);
    }

    public User findByUsernameAndPass(User account) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[User]\n"
                + "  where username = ? and password = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", account.getUsername());
        parameterMap.put("password", account.getPassword());
        List<User> list = queryGenericDAO(User.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

  
    
      public void addIns(User u) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([username]\n"
                + "           ,[email]\n"
                + "           ,[password]\n"
                + "           ,[id_role])\n"
                + "     VALUES\n"
                + "           (?, -- Giá trị cho cột InstructorID\n"
                + "           ?,   -- Giá trị cho cột InstructorName\n"
                + "           ?, -- Giá trị cho cột BirthDate (sử dụng hàm GETDATE() để lấy ngày/giờ hiện tại)\n"
                + "           ?)     -- Giá trị cho cột Gender (ví dụ: 1 cho Male, 0 cho Female)\n";
                  
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", u.getUsername());
        parameterMap.put("email", u.getEmail());
        parameterMap.put("password", u.getPassword());
        parameterMap.put("id_role", u.getId_role());
        
          insertGenericDAO(sql, parameterMap);
    }
    public static void main(String[] args) {
       
       for (User o : new User_DAO().findAll()) {
            System.out.println(o);
        
    }
    }

}
