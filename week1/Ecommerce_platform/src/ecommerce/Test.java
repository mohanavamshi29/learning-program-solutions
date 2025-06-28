package ecommerce;
import java.util.Arrays;
import java.util.Comparator;
public class Test {
    public static void main(String[] args) {
    	 Product[] inventory = {
    	            new Product(701, "Wireless Charger", "Electronics"),
    	            new Product(502, "Yoga Mat", "Fitness"),
    	            new Product(309, "Scented Candle", "Home & Living")
    	        };
    	        int searchId = 502;
    	        System.out.println("Linear Search");
    	        int linearIndex = Search.linearSearch(inventory, searchId);
    	        if (linearIndex != -1) {
    	            System.out.println("Product found " + inventory[linearIndex].getProductName());
    	        } else {
    	            System.out.println("Product not found");
    	        }
    	        Arrays.sort(inventory, Comparator.comparingInt(Product::getProductId));
    	        System.out.println("Binary Search=");
    	        int binaryIndex = Search.binarySearch(inventory, searchId);
    	        if (binaryIndex != -1) {
    	            System.out.println("Product found " + inventory[binaryIndex].getProductName());
    	        } else {
    	            System.out.println("Product not found");
    	        }
    }
}
