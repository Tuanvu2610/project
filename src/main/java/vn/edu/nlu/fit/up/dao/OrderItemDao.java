package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.OrderItem;

import java.util.List;

public class OrderItemDao extends BaseDao {

    public List<OrderItem> getItemsByOrderId(int orderId) {

        String sql = """
            SELECT 
                oi.id,
                oi.order_id,
                oi.product_id,
                oi.quantity,
                oi.price,
                p.name AS product_name
            FROM order_items oi
            JOIN products p ON oi.product_id = p.id
            WHERE oi.order_id = :orderId
        """;

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("orderId", orderId)
                        .map((rs, ctx) -> {
                            OrderItem item = new OrderItem();
                            item.setId(rs.getInt("id"));
                            item.setOrderId(rs.getInt("order_id"));
                            item.setProductId(rs.getInt("product_id"));
                            item.setProductName(rs.getString("product_name"));
                            item.setQuantity(rs.getInt("quantity"));
                            item.setPrice(rs.getDouble("price"));
                            return item;
                        })
                        .list()
        );
    }
    public void insert(int orderId, int productId, int quantity, double price) {

        String sql = """
        INSERT INTO order_details (order_id, product_id, quantity, price)
        VALUES (:orderId, :productId, :quantity, :price)
    """;

        get().useHandle(handle ->
                handle.createUpdate(sql)
                        .bind("orderId", orderId)
                        .bind("productId", productId)
                        .bind("quantity", quantity)
                        .bind("price", price)
                        .execute()
        );
    }
}
