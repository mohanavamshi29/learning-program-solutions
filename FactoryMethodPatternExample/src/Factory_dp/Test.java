package Factory_dp;

public class Test {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DocumentFactory wordFactory = new WordDocumentFactory();
	    DocumentFactory pdfFactory = new PdfDocumentFactory();
	    DocumentFactory excelFactory = new ExcelDocumentFactory();
	    Document wordDoc = wordFactory.createDocument();
	    Document pdfDoc = pdfFactory.createDocument();
	    Document excelDoc = excelFactory.createDocument();
	    wordDoc.open();
	    pdfDoc.open();
	    excelDoc.open();
	}
}