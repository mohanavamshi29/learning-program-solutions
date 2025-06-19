package Designpattern;
public class Test {
	public static void main(String[] args) {
		
		Logger l1= Logger.getInstance();
	    Logger l2 = Logger.getInstance();
	    l1.log("This is the logger message one");
	    l2.log("This is the logger message two");
	    if(l1==l2) {
	            System.out.println("Both logger instances are the same");
	            } else {
	            System.out.println("Different logger instances exist");
	        }
	}
}