package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.book;

public class searchDAO {

	
	private static Connection getConnection() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

	    return DriverManager.getConnection(dbUrl, username, password);
	}
	
	public static List<book> SearchAllBook(String word){
		String sql="select book_name,publisher,isbn,author_name from book where book_name like ? or isbn like ? or publisher like ? or author_name like ?";
		List<book> result=new ArrayList<>();
		
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1,"%"+word+"%");
			pstmt.setString(2,"%"+word+"%");
			pstmt.setString(3,"%"+word+"%");
            pstmt.setString(4,"%"+word+"%");
			try (ResultSet rs = pstmt.executeQuery()){
				
				while(rs.next()) {
					int bookId=rs.getInt("book_id");
					String title=rs.getString("book_name");
					String author=rs.getString("author_name");
					String publisher=rs.getString("publisher");
					String pubdate=rs.getString("pub_date");
					String isbn=rs.getString("isbn");
					int categoryId=rs.getInt("category_id");
					int brandcheck=rs.getInt("brand_check");
					String comment=rs.getString("comment");
					String URL=rs.getString("URL");
					book list=new book(bookId,title,author,publisher,pubdate,isbn,categoryId,brandcheck,comment,URL);
					
					result.add(list);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (URISyntaxException e) {
			e.printStackTrace();
		}

		return result;
		
	}
}
