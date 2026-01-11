package vn.edu.nlu.fit.up.dao;

import vn.edu.nlu.fit.up.model.SupportRequest;

import java.util.List;

public class SupportDao extends BaseDao {

    public int insert(SupportRequest sr) {
        return get().withHandle(handle ->
                handle.createUpdate("""
                    INSERT INTO support_requests
                    (full_name, email, category, title, description, image)
                    VALUES
                    (:full_name, :email, :category, :title, :description, :image)
                """)
                        .bind("full_name", sr.getFullName())
                        .bind("email", sr.getEmail())
                        .bind("category", sr.getCategory())
                        .bind("title", sr.getTitle())
                        .bind("description", sr.getDescription())
                        .bind("image", sr.getImage())
                        .execute()
        );
    }
    public List<SupportRequest> getAll() {
        return get().withHandle(handle ->
                handle.createQuery("""
            SELECT 
                id,
                full_name   AS fullName,
                email,
                category,
                title,
                description,
                image,
                status,
                created_at  AS createdAt
            FROM support_requests
            ORDER BY created_at DESC
        """)
                        .mapToBean(SupportRequest.class)
                        .list()
        );
    }


    public SupportRequest getById(int id) {
        return get().withHandle(h ->
                h.createQuery("""
                SELECT 
                    id,
                    full_name  AS fullName,
                    email,
                    category,
                    title,
                    description,
                    image,
                    status,
                    created_at AS createdAt
                FROM support_requests
                WHERE id = :id
            """)
                        .bind("id", id)
                        .mapToBean(SupportRequest.class)
                        .findOne()
                        .orElse(null)
        );
    }


    public int updateStatus(int id, String status) {
        return get().withHandle(h ->
                h.createUpdate("""
            UPDATE support_requests
            SET status = :status
            WHERE id = :id
        """)
                        .bind("id", id)
                        .bind("status", status)
                        .execute()
        );
    }
}
