package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IGuitar;
import dao.IInventory;
import dao.dataAccess;
import model.Builder;
import model.Guitar;
import model.GuitarSpec;
import model.Inventory;
import model.Type;
import model.Wood;

/**
 * Servlet implementation class InstrumentService
 */
@WebServlet(urlPatterns={"/searchguitar.do"})
public class SearchGuitar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchGuitar() {
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
		 /*  Inventory inventory = new Inventory();
		    initInventory(inventory);*/
		String  builder=request.getParameter("builder");
		String  model=request.getParameter("model");
		String  type=request.getParameter("type");
		String  numStrings=request.getParameter("numStrings");
		String  backwood=request.getParameter("backwood");
		String  topwood=request.getParameter("topwood");
		Builder	builder1=Builder.fromString(builder);
		Type type1=Type.fromString(type);
		Wood backwood1=Wood.fromString(backwood);
		Wood topwood1=Wood.fromString(topwood);
			
		    GuitarSpec whatErinLikes = 	new GuitarSpec(builder1, model, 
					type1, Integer.parseInt(numStrings),backwood1,topwood1);
		    IInventory i = dataAccess.createInventoryDao();
		    Inventory inventory = new Inventory();
			try {
				inventory = i.getInventorys();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    List matchingGuitars = inventory.search(whatErinLikes);
		    request.setAttribute("matchingGuitars", matchingGuitars);
			request.getRequestDispatcher("/sellershowguitar.jsp").forward(request,response);
	}
	
/*	public void initInventory(Inventory inventory){
		IGuitar i = dataAccess.createGuitarDao();
		List<Guitar> inventory1 = i.getAllGuitars();
		
	}*/

}
