package Factory_dp;

public class PdfDocumentFactory extends DocumentFactory{

	@Override
	public Document createDocument() {
		// TODO Auto-generated method stub
		return new PdfDocument();
	}

}
