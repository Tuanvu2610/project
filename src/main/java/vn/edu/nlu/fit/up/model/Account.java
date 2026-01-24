package vn.edu.nlu.fit.up.model;

import java.time.LocalDate;

public class Account {
    private int id;
    private int user_id;
    private String username;
    private String password;
    private String role;
    private String status;
    private LocalDate registration_date;

    public Account(int id, int user_id, String username, String password, String role, LocalDate registration_date, String status) {
        this.id = id;
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.registration_date = registration_date;
        this.status = status;
    }

    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDate getRegistration_date() {
        return registration_date;
    }

    public void setRegistration_date(LocalDate registration_date) {
        this.registration_date = registration_date;
    }
}