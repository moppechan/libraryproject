package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.libraryDAO;
import dto.reviewList;

/**
 * Servlet implementation class BookinfoServlet
 */
@WebServlet("/BookinfoServlet")
public class BookinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookinfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String isbn=request.getParameter("isbn");
		List<reviewList> list=libraryDAO.GetBookInfoByIsbn(isbn);
		List<reviewList> review=libraryDAO.GetReviewByIsbn(isbn);
		HttpSession session=request.getSession();
		session.setAttribute("reviewSelectisbn", list);
		session.setAttribute("BookInfoByIsbn", review);
		
		String path="WEB-INF/view/BookInfo.jsp";
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
