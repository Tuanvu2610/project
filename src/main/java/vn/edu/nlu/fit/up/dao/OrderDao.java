package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.Order;

import java.util.List;

public class OrderDao extends BaseDao {

    // ===== LẤY ĐƠN THEO TRẠNG THÁI =====
    public List<Order> getOrdersByStatus(String status) {

        String sql = """
            SELECT o.*,
                   COALESCE(SUM(oi.quantity), 0) AS total_quantity
            FROM orders o
            LEFT JOIN order_items oi ON o.id = oi.order_id
            WHERE o.status = :status
            GROUP BY o.id
            ORDER BY o.created_at DESC
        """;

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("status", status)
                        .map((rs, ctx) -> {
                            Order o = new Order();

                            o.setId(rs.getInt("id"));
                            o.setUserId(rs.getInt("user_id"));
                            o.setReceiverName(rs.getString("receiver_name"));
                            o.setReceiverPhone(rs.getString("receiver_phone"));
                            o.setReceiverAddress(rs.getString("receiver_address"));
                            o.setTotalAmount(rs.getDouble("total_amount"));
                            o.setStatus(rs.getString("status"));

                            // ⚠️ CỰC KỲ QUAN TRỌNG
                            o.setCreatedAt(rs.getTimestamp("created_at"));

                            o.setTotalQuantity(rs.getInt("total_quantity"));

                            return o;
                        })
                        .list()
        );
    }

    // ===== UPDATE TRẠNG THÁI =====
    public void updateStatus(int orderId, String status) {
        String sql = "UPDATE orders SET status = :status WHERE id = :id";

        get().useHandle(handle ->
                handle.createUpdate(sql)
                        .bind("status", status)
                        .bind("id", orderId)
                        .execute()
        );
    }

    // ===== LẤY ĐƠN THEO ID (XEM CHI TIẾT) =====
    public Order getById(int id) {

        String sql = """
            SELECT o.*,
                   COALESCE(SUM(oi.quantity), 0) AS total_quantity
            FROM orders o
            LEFT JOIN order_items oi ON o.id = oi.order_id
            WHERE o.id = :id
            GROUP BY o.id
        """;

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("id", id)
                        .map((rs, ctx) -> {
                            Order o = new Order();

                            o.setId(rs.getInt("id"));
                            o.setUserId(rs.getInt("user_id"));
                            o.setReceiverName(rs.getString("receiver_name"));
                            o.setReceiverPhone(rs.getString("receiver_phone"));
                            o.setReceiverAddress(rs.getString("receiver_address"));
                            o.setTotalAmount(rs.getDouble("total_amount"));
                            o.setStatus(rs.getString("status"));
                            o.setCreatedAt(rs.getTimestamp("created_at"));
                            o.setTotalQuantity(rs.getInt("total_quantity"));

                            return o;
                        })
                        .one()
        );
    }
    public int insert(int userId, double total) {

        String sql = """
        INSERT INTO orders (user_id, order_date, status, total)
        VALUES (:userId, NOW(), 'pending', :total)
    """;

        return get().withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("userId", userId)
                        .bind("total", total)
                        .executeAndReturnGeneratedKeys("id")
                        .mapTo(int.class)
                        .one()
        );
    }
    public List<Order> getOrdersByUser(int userId) {
        String sql = """
             SELECT o.id,
             SUM(oi.price * oi.quantity) AS totalAmount,
             o.status
             FROM orders o
             JOIN order_details oi ON o.id = oi.order_id
             WHERE o.user_id =:userId
             GROUP BY o.id;
            """;
        return get().withHandle(h ->
                h.createQuery(sql)
                        .bind("userId", userId)
                        .mapToBean(Order.class)
                        .list()
        );
    }
    public List<Order> getOrdersByUserAndStatus(int userId, String status) {
        String sql = """
        SELECT * FROM orders
        WHERE user_id = :userId AND status = :status
        ORDER BY order_date DESC
    """;

        return get().withHandle(h ->
                h.createQuery(sql)
                        .bind("userId", userId)
                        .bind("status", status)
                        .mapToBean(Order.class)
                        .list()
        );
    }

}
