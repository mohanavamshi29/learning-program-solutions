package ecommerce;

public class Search {

    public static int linearSearch(Product[] items, int targetId) {
        for (int i = 0; i < items.length; i++) {
            if (items[i].getProductId() == targetId) {
                return i;
            }
        }
        return -1;
    }

    public static int binarySearch(Product[] items, int targetId) {
        int start = 0;
        int end = items.length - 1;

        while (start <= end) {
            int mid = start + (end - start) / 2;
            int currentId = items[mid].getProductId();

            if (currentId == targetId) {
                return mid;
            } else if (currentId < targetId) {
                start = mid + 1;
            } else {
                end = mid - 1;
            }
        }

        return -1;
    }
}
