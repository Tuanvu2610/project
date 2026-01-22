package vn.edu.nlu.fit.up.cart;

import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class Cart {
    Map<Integer, CartItem> data;
    public Cart() {
        data = new HashMap<Integer, CartItem>();
    }
    public void addItem(Product product, int quantity) {
        if (quantity <= 0) {quantity = 1;}
        if (!data.containsKey(product.getId())) {
            data.put(product.getId(), new CartItem(product, quantity, product.getPrice_sale()));
        }else{
            data.get(product.getId()).upQuantity(quantity);
        }
    }
    public void updateItem(Product product, int quantity) {
//        if (quantity <= 0) {quantity = 1;}
    }
    public CartItem delItem(int id) {
        return data.remove(id);
    }
    public List<CartItem> delAll() {
        List<CartItem> list = new ArrayList<CartItem>(data.values());
        data.clear();
        return list;
    }
    public List<CartItem> getItems() {
        return new ArrayList<>(data.values());
    }
    public CartItem getItem(int id) {
        return data.get(id);
    }
    public int getTotalQuantity() {
        AtomicInteger total = new AtomicInteger();
        data.values().forEach(c -> total.addAndGet(c.getQuantity()));
        return total.get();
    }
    public int getTotal() {
        int sum = 0;
        for (CartItem c : data.values()) {
            if (c.isChecked()) {
                sum += c.getPrice() * c.getQuantity();
            }
        }
        return sum;
    }
    public void tru(int id) {
        CartItem item = data.get(id);
        if (item == null) return;
        int qty = item.getQuantity() - 1;
        if (qty <= 0) {
            data.remove(id);
        } else {
            item.setQuantity(qty);
//            item.setChecked(true);
        }
    }
    public void cong(int id) {
        CartItem item = data.get(id);
        ProductDao pd = new ProductDao();
        if (item == null) {
            Product p = pd.getProduct(id);
            item = new CartItem(p, 1, p.getPrice_sale());
            data.put(id, item);
//            item.setChecked(true);
        } else {
            item.setQuantity(item.getQuantity() + 1);
//            item.setChecked(true);
        }
    }
    public int getQuantity(int id) {
        return data.get(id).getQuantity();
    }
}
