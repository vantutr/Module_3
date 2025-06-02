package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<Integer, Product>();
        products.put(1, new Product(1, "iphone", "Hàng 99%", 10000000, "https://bizweb.dktcdn.net/thumb/1024x1024/100/342/250/products/11-xanh.png?v=1589033626067"));
        products.put(2, new Product(2, "Samsung", "Hàng New", 8000000, "https://bizweb.dktcdn.net/thumb/1024x1024/100/342/250/products/11-xanh.png?v=1589033626067"));
        products.put(3, new Product(3, "Oppo", "Hàng 99%", 7000000, "https://bizweb.dktcdn.net/thumb/1024x1024/100/342/250/products/11-xanh.png?v=1589033626067"));
        products.put(4, new Product(4, "Vivo", "Hàng 99%", 6000000, "https://bizweb.dktcdn.net/thumb/1024x1024/100/342/250/products/11-xanh.png?v=1589033626067"));
        products.put(5, new Product(5, "Xiaomi", "Hàng 99%", 5000000, "https://bizweb.dktcdn.net/thumb/1024x1024/100/342/250/products/11-xanh.png?v=1589033626067"));
    }


    @Override
    public List<Product> findAll() {
        return new ArrayList<Product>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
