/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import enity.OrderDetail;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDetailDAO extends GenericDAO<OrderDetail> {

    @Override
    public List<OrderDetail> findAll() {
        String sql = "select * from [Order] as a join [OrderDetail] as b on a.id = b.orderID \n";
               
        return queryGenericDAO(OrderDetail.class, sql, parameterMap);
    }

    @Override
    public int insert(OrderDetail t) {
        String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                + "           ([quantity]\n"
                + "           ,[productID]\n"
                + "           ,[orderID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("1", t.getQuantity());
        parameterMap.put("2", t.getProductID());
        parameterMap.put("3", t.getOrderID());
        return insertGenericDAO(sql, parameterMap);
    }

    public static void main(String[] args) {
        for (OrderDetail o : new OrderDetailDAO().findAll()) {
            System.out.println(o);

        }
    }

}
