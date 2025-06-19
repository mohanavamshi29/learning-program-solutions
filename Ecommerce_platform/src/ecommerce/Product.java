package ecommerce;

public class Product {
    private int itemId;
    private String itemName;
    private String itemCategory;

    public Product(int itemId, String itemName, String itemCategory) {
        this.itemId = itemId;
        this.itemName = itemName;
        this.itemCategory = itemCategory;
    }

    public int getProductId() {
        return itemId;
    }

    public String getProductName() {
        return itemName;
    }

    public String getCategory() {
        return itemCategory;
    }
}
