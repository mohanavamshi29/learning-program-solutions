package Factory_dp;
public class PdfDocument implements Document{

	@Override
	public void open() {
		System.out.println("Pdf Document opened");
	}

}