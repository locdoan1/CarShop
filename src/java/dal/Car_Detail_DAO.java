/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import constant.CommonConstant;
import enity.Car_Detail;
import enity.ID_Product;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Car_Detail_DAO extends GenericDAO<Car_Detail> {

    @Override
    public List<Car_Detail> findAll() {
        return queryGenericDAO(Car_Detail.class);
    }

    @Override
    public int insert(Car_Detail t) {
        return insertGenericDAO(t);
    }

    public List<Car_Detail> findAll12(int page) {
        String sql = "select * from Car_Detail order by Car_Detail.id offset ? rows fetch next ? rows only";
        parameterMap = new LinkedHashMap<>();

        parameterMap.put("offset", (page - 1) * CommonConstant.RECORED_PER_PAGE);
        parameterMap.put("fetch", CommonConstant.RECORED_PER_PAGE);
        List<Car_Detail> list = queryGenericDAO(Car_Detail.class, sql, parameterMap);
        return list;
    }

    public List<Car_Detail> findByID(String id, int page) {
        String sql = "select * from Car_Detail inner join ID_Product on"
                + " Car_Detail.id_product = ID_Product.id_product"
                + " where Car_Detail.id_product = ? order by Car_Detail.id offset ? rows fetch next ? rows only";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("Car_Detail.id_product", id);
        parameterMap.put("offset", (page - 1) * CommonConstant.RECORED_PER_PAGE);
        parameterMap.put("fetch", CommonConstant.RECORED_PER_PAGE);
        List<Car_Detail> list = queryGenericDAO(Car_Detail.class, sql, parameterMap);
        return list;
    }

    public Car_Detail find1Car(int id) {

        String sql = "SELECT *"
                + "  FROM [dbo].[Car_Detail] inner join ID_Product on Car_Detail.id_product = ID_Product.id_product\n"
                + "  where [id] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put(sql, id);
        List<Car_Detail> list = queryGenericDAO(Car_Detail.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    public List<Car_Detail> findByName(String keyword, int page) {
        String sql = "select * from [dbo].[Car_Detail] where name like ? order by Car_Detail.id offset ? rows fetch next ? rows only";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        parameterMap.put("offset", (page - 1) * CommonConstant.RECORED_PER_PAGE);
        parameterMap.put("fetch", CommonConstant.RECORED_PER_PAGE);
        List<Car_Detail> list = queryGenericDAO(Car_Detail.class, sql, parameterMap);
        return list;
    }

    public int findTotalRecoredByCategoryId(String id) {
        String sql = "select count(*) from Car_Detail where id_product = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put(sql, id);
        return findTotalRecordGenericDAO(Car_Detail.class, sql, parameterMap);
    }

    public int findTotalRecoredByName(String keyword) {
        String sql = "select count(*) from Car_Detail where name like ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        return findTotalRecordGenericDAO(Car_Detail.class, sql, parameterMap);
    }

    public void addCar(Car_Detail car1) {
        String sql = "INSERT INTO [dbo].[Car_Detail]\n"
                + "           ([name]\n"
                + "           ,[price]\n"
                + "           ,[image]\n"
                + "           ,[description]\n"
                + "           ,[id_product])\n"
                + "     VALUES\n"
                + "           (?, -- Giá trị cho cột InstructorID\n"
                + "           ?,   -- Giá trị cho cột InstructorName\n"
                + "           ?, -- Giá trị cho cột BirthDate (sử dụng hàm GETDATE() để lấy ngày/giờ hiện tại)\n"
                + "           ?,     -- Giá trị cho cột Gender (ví dụ: 1 cho Male, 0 cho Female)\n"
                + "           ?)   -- Giá trị cho cột ClassID";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("1", car1.getName());
        parameterMap.put("2", car1.getPrice());
        parameterMap.put("3", car1.getImage());
        parameterMap.put("4", car1.getDescription());
        parameterMap.put("5", car1.getId_product());
        insertGenericDAO(sql, parameterMap);
    }

    public void deleteByID(int id) {
        String sql = "Delete from Car_Detail where id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        deleteGenericDAO(sql, parameterMap);
    }

    public void updateByID(Car_Detail ins) {
        String sql = "UPDATE [dbo].[Car_Detail]\n"
                + "     SET [name] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[id_product] = ?\n"
                + " WHERE [id] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("1", ins.getName());
        parameterMap.put("2", ins.getPrice());
        parameterMap.put("3", ins.getImage());
        parameterMap.put("4", ins.getDescription());
        parameterMap.put("5", ins.getId_product());
        parameterMap.put("6", ins.getId());
        updateGenericDAO(sql, parameterMap);
    }

    public static void main(String[] args) {
        Car_Detail_DAO dao = new Car_Detail_DAO();
        List<Car_Detail> cars = dao.findAll();
        for (Car_Detail car : cars) {
            System.out.println(car);
        }
    }
}
