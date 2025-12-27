package vn.edu.nlu.fit.up.dao;
import vn.edu.nlu.fit.up.model.Statistic;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class StatisticDao extends BaseDao {

    public List<Statistic> byYear(int year) {
        String sql = """
        SELECT 
            MONTH(o.order_date) AS month,
            SUM(o.total) AS revenue,
            COUNT(DISTINCT o.id) AS totalOrders,
            COALESCE(SUM(od.quantity), 0) AS totalProducts
        FROM orders o
        LEFT JOIN order_details od ON o.id = od.order_id
        WHERE YEAR(o.order_date) = :year
          AND o.status = 'completed'
        GROUP BY MONTH(o.order_date)
        ORDER BY month
    """;

        return get().withHandle(h ->
                h.createQuery(sql)
                        .bind("year", year)
                        .mapToBean(Statistic.class)
                        .list()
        );
    }

    public List<Statistic> byYearMonth(int year, int month) {
        String sql = """
        SELECT 
            MONTH(o.order_date) AS month,
            SUM(o.total) AS revenue,
            COUNT(DISTINCT o.id) AS totalOrders,
            COALESCE(SUM(od.quantity), 0) AS totalProducts
        FROM orders o
        LEFT JOIN order_details od ON o.id = od.order_id
        WHERE YEAR(o.order_date) = :year
          AND MONTH(o.order_date) = :month
          AND o.status = 'completed'
        GROUP BY MONTH(o.order_date)
    """;

        return get().withHandle(h ->
                h.createQuery(sql)
                        .bind("year", year)
                        .bind("month", month)
                        .mapToBean(Statistic.class)
                        .list()
        );
    }

    public Map<Integer, Long> revenueByYear(int year) {
        String sql = """
                    SELECT 
                        MONTH(order_date) AS month,
                        SUM(total) AS revenue
                    FROM orders
                    WHERE YEAR(order_date) = :year
                      AND status = 'completed'
                    GROUP BY MONTH(order_date)
                """;

        return get().withHandle(h ->
                h.createQuery(sql)
                        .bind("year", year)
                        .map((rs, ctx) ->
                                Map.entry(rs.getInt("month"), rs.getLong("revenue"))
                        )
                        .list()
                        .stream()
                        .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue))
        );
    }
}
