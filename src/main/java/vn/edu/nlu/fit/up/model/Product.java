package vn.edu.nlu.fit.up.model;

public class Product {
    private int id;
    private String name;
    private String img;
    private int category_id;
    private String material;
    private String size;
    private int price_sale;
    private int price_origin;

    public Product(int id, String name, String img, int category_id, String material, String size, int price_sale, int price_origin) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.category_id = category_id;
        this.material = material;
        this.size = size;
        this.price_sale = price_sale;
        this.price_origin = price_origin;
    }

    public Product() {}

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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getPrice_sale() {
        return price_sale;
    }

    public void setPrice_sale(int price_sale) {
        this.price_sale = price_sale;
    }

    public int getPrice_origin() {
        return price_origin;
    }

    public void setPrice_origin(int price_origin) {
        this.price_origin = price_origin;
    }
    public int getPercent() {
        if (price_origin <= 0 || price_sale >= price_origin) return 0;
        return (int) Math.round(
                (price_origin - price_sale) * 100.0 / price_origin
        );
    }
}
