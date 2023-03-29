package servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.bookDAO;
import dto.account;
import dto.lendbook;

/**
 * Servlet implementation class ReturnBook3Servlet
 */
@WebServlet("/ReturnBook3Servlet")
public class ReturnBook3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReturnBook3Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		account ac = (account) session.getAttribute("input_data");
		LocalDate returndate = LocalDate.now();
		String return_date = returndate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String book = request.getParameter("id");
		int book_id = Integer.parseInt(book);
		lendbook le = new lendbook(0,null,return_date,null,0,0);
		int result = bookDAO.Returnbook(le, book_id);
		String path = "";
		
		if(result==1) {
			path="WEB-INF/view/returnbook_success.jsp";
		}else {
			path="WEB-INF/view/returnbook_fail.jsp";
		}
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
