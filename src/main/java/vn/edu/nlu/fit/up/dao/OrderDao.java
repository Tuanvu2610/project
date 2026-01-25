package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.Order;

import java.util.List;

public class OrderDao extends BaseDao {

    public List<Order> getOrdersByStatus(String status) {

        String sql = """
            SELECT o.id,
                   o.user_id,
                   o.order_date,
                   o.status,
                   o.total,
                   COALESCE(SUM(oi.quantity), 0) AS total_quantity
            FROM orders o
            LEFT JOIN order_items oi ON o.id = oi.order_id
            WHERE o.status = :status
            GROUP BY o.id, o.user_id, o.order_date, o.status, o.total
            ORDER BY o.order_date DESC
        """;

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("status", status)
                        .map((rs, ctx) -> {
                            Order o = new Order();

                            o.setId(rs.getInt("id"));
                            o.setUserId(rs.getInt("user_id"));
                            o.setOrderDate(rs.getTimestamp("order_date"));
                            o.setStatus(rs.getString("status"));
                            o.setTotal(rs.getDouble("total"));
                            o.setTotalQuantity(rs.getInt("total_quantity"));

                            return o;
                        })
                        .list()
        );
    }

    public void updateStatus(int orderId, String status) {

        String sql = "UPDATE orders SET status = :status WHERE id = :id";

        get().useHandle(handle ->
                handle.createUpdate(sql)
                        .bind("status", status)
                        .bind("id", orderId)
                        .execute()
        );
    }

    public Order getById(int id) {

        String sql = """
            SELECT o.id,
                   o.user_id,
                   o.order_date,
                   o.status,
                   o.total,
                   COALESCE(SUM(oi.quantity), 0) AS total_quantity
            FROM orders o
            LEFT JOIN order_items oi ON o.id = oi.order_id
            WHERE o.id = :id
            GROUP BY o.id, o.user_id, o.order_date, o.status, o.total
        """;

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("id", id)
                        .map((rs, ctx) -> {
                            Order o = new Order();

                            o.setId(rs.getInt("id"));
                            o.setUserId(rs.getInt("user_id"));
                            o.setOrderDate(rs.getTimestamp("order_date"));
                            o.setStatus(rs.getString("status"));
                            o.setTotal(rs.getDouble("total"));
                            o.setTotalQuantity(rs.getInt("total_quantity"));

                            return o;
                        })
                        .one()
        );
    }
}
