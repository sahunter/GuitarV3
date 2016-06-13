package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IGuitar;
import dao.IInventory;
import dao.dataAccess;
import model.GuitarSpec;
import model.Builder;
import model.Guitar;
import model.Type;
import model.Wood;
import mysqlDao.InventoryImpl;



/**
 * Servlet implementation class AddGuitar
 */
@WebServlet(urlPatterns={"/addguitar.do"})
public class AddGuitar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGuitar() {
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
		//String [] check=request.getParameterValues("checkboxname");
		
		String serialNumber = request.getParameter("serialNumber");
		String price = request.getParameter("price");
		String  builder=request.getParameter("builder");
		String  model=request.getParameter("model");
		String  type=request.getParameter("type");
		String  numStrings=request.getParameter("numStrings");
		String  backwood=request.getParameter("backwood");
		String  topwood=request.getParameter("topwood");
		IInventory i = dataAccess.createInventoryDao();
		Builder	builder1=Builder.fromString(builder);
		Type type1=Type.fromString(type);
		Wood backwood1=Wood.fromString(backwood);
		Wood topwood1=Wood.fromString(topwood);	
	    GuitarSpec spec = 	new GuitarSpec(builder1, model, 
						type1, Integer.parseInt(numStrings),backwood1,topwood1);
		    Guitar guitar = new Guitar(serialNumber,Double.parseDouble(price),spec);
        try {
			i.addGuitar(guitar);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
        response.sendRedirect("addguitar.jsp");  
		
}
}