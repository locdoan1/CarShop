/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import enity.ID_Product;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ID_Product_DAO extends GenericDAO<ID_Product> {

    @Override
    public List<ID_Product> findAll() {
        
        return queryGenericDAO(ID_Product.class);
    }

    @Override
    public int insert(ID_Product t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public ID_Product find1CarToCheckNameProduct(int id) {

        String sql = " select * from Car_Detail  join ID_Product on\n"
                + "                 Car_Detail.id_product = ID_Product.id_product\n"
                + "                 where Car_Detail.id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put(sql, id);
        List<ID_Product> list = queryGenericDAO(ID_Product.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }
    
    public static void main(String[] args) {
       ID_Product_DAO dao = new ID_Product_DAO();
        List<ID_Product> pd = dao.findAll();
        for (ID_Product pro : pd) {
            System.out.println(pro);
        }
    }
}
