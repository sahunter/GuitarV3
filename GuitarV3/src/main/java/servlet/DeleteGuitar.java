package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IGuitar;
import dao.IInventory;
import dao.dataAccess;
import model.Guitar;
import mysqlDao.InventoryImpl;

/**
 * Servlet implementation class DeleteGuitar
 */
@WebServlet(urlPatterns={"/deleteguitar.do"})
public class DeleteGuitar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteGuitar() {
        super();
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
		// TODO Auto-generated method stub
		doGet(request, response);
		String[] serialNumber = request.getParameterValues("checkboxname");
		
	
		for(int j=0;j<serialNumber.length;j++){
			String serialNumber1 = serialNumber[j];
			IInventory i = dataAccess.createInventoryDao();
		 Guitar guitar = new Guitar(serialNumber1, 0, null);
		 try {
			i.deleteGuitar(guitar);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		}
		  response.sendRedirect("sellersearchguitar.jsp");  
		
	}

}
