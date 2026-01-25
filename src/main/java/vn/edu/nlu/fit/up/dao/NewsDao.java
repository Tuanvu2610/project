package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.News;

import java.util.List;

public class NewsDao extends BaseDao {

    public List<News> getAll() {

        String sql = """
            SELECT 
                id,
                title,
                img,
                content,
                author_id,
                published_at
            FROM news
            ORDER BY published_at DESC
        """;

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .map((rs, ctx) -> {
                            News n = new News();

                            n.setId(rs.getInt("id"));
                            n.setTitle(rs.getString("title"));
                            n.setImg(rs.getString("img"));
                            n.setContent(rs.getString("content"));
                            n.setAuthorId(rs.getInt("author_id"));
                            n.setPublishedAt(rs.getTimestamp("published_at"));

                            return n;
                        })
                        .list()
        );
    }

    public News getById(int id) {

        String sql = """
            SELECT 
                id,
                title,
                img,
                content,
                author_id,
                published_at
            FROM news
            WHERE id = :id
        """;

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("id", id)
                        .map((rs, ctx) -> {
                            News n = new News();

                            n.setId(rs.getInt("id"));
                            n.setTitle(rs.getString("title"));
                            n.setImg(rs.getString("img"));
                            n.setContent(rs.getString("content"));
                            n.setAuthorId(rs.getInt("author_id"));
                            n.setPublishedAt(rs.getTimestamp("published_at"));

                            return n;
                        })
                        .findOne()
                        .orElse(null)
        );
    }
}
