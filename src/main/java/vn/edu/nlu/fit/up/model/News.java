package vn.edu.nlu.fit.up.model;

import java.sql.Timestamp;

public class News {

    private int id;
    private String title;
    private String img;
    private String content;
    private int authorId;
    private Timestamp publishedAt;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }
    public void setImg(String img) {
        this.img = img;
    }

    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

    public int getAuthorId() {
        return authorId;
    }
    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public Timestamp getPublishedAt() {
        return publishedAt;
    }
    public void setPublishedAt(Timestamp publishedAt) {
        this.publishedAt = publishedAt;
    }
}
