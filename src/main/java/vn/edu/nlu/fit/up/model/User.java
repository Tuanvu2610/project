package vn.edu.nlu.fit.up.model;

public class User {
    int id;
    String name;
    String username;
    String password;
    String date_of_birth;
    int phone;
    String sex;
    int address_id;
    String img;

    public User(int id, String name, String username, String password, String date_of_birth, int phone, String sex, int address_id, String img) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.password = password;
        this.date_of_birth = date_of_birth;
        this.phone = phone;
        this.sex = sex;
        this.address_id = address_id;
        this.img = img;
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

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
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
}
