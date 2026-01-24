package vn.edu.nlu.fit.up.model;

import java.time.LocalDate;

public class User {
    int id;
    String name;
    LocalDate date_of_birth;
    String phone;
    String sex;
    int address_id;
    String img;
    String email;
    private String full_address;

    public User(int id, String name, LocalDate date_of_birth, String phone, String sex, int address_id, String img, String email, String address) {
        this.id = id;
        this.name = name;
        this.date_of_birth = date_of_birth;
        this.phone = phone;
        this.sex = sex;
        this.address_id = address_id;
        this.img = img;
        this.email = email;
        this.full_address = full_address;
    }

    public User(){
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(LocalDate date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAddress_id() {
        return address_id;
    }

    public void setAddress_id(int address_id) {
        this.address_id = address_id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFull_address() {
        return full_address;
    }

    public void setFull_address(String full_address) {
        this.full_address = full_address;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", date_of_birth=" + date_of_birth +
                ", phone='" + phone + '\'' +
                ", sex='" + sex + '\'' +
                ", address_id=" + address_id +
                ", img='" + img + '\'' +
                ", email='" + email + '\'' +
                ", address=" + full_address +
                '}';
    }
}
