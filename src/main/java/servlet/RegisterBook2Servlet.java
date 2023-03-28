package servlet;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.bookDAO;
import dto.book;
/**
 * Servlet implementation class RegisterBook2Servlet
 */
@WebServlet("/RegisterBook2Servlet")
@MultipartConfig
public class RegisterBook2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterBook2Servlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String book_name = request.getParameter("bookname");
		String publisher = request.getParameter("publisher");
		String author_name = request.getParameter("author");
		String pub_date = request.getParameter("pubdate");
		String isbn = request.getParameter("isbn");
		String category = request.getParameter("category");
		int category_id = Integer.parseInt(category);
		
		int brand_check;
		bookDAO book = new bookDAO();
		if(book.isDateOverOneYear(pub_date)) {
			brand_check = 1;
		} else {
			brand_check = 0;
		}
		Part filePart=request.getPart("file");
		InputStream inputStream = filePart.getInputStream();
		// Base64エンコード
	    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	    byte[] buffer = new byte[1024];
	    int length;
	    while ((length = inputStream.read(buffer)) != -1) {
	        outputStream.write(buffer, 0, length);
	    }
	    String base64Encoded = Base64.getEncoder().encodeToString(outputStream.toByteArray());
	    book bo = new book(0, book_name, author_name, publisher, pub_date, isbn, category_id, brand_check, null, base64Encoded);
	    int result = bookDAO.registerbook(bo);
	    String path ="";
		if(result==1) {
			path = "WEB-INF/view/registerbook_success.jsp?error=1";
		} else {
			path = "WEB-INF/view/registerbook_1st.jsp?error=1";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
