package vn.edu.nlu.fit.up.model;

public class Address {
    int id;
    String full_address;

    public Address(int id, String full_address) {
        this.id = id;
        this.full_address = full_address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullAddress() {
        return full_address;
    }

    public void setFullAddress(String full_address) {
        this.full_address = full_address;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", full_address='" + full_address + '\'' +
                '}';
    }
}
