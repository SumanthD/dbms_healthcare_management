package medication.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import medication.service.MedicationService;

/**
 * Servlet implementation class findAll
 */

public class findTotalPrice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MedicationService medicationservice = new MedicationService();
		try {
			request.setAttribute("TotalPrice", medicationservice.findTotalPrice());
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			List<Object> li = medicationservice.findTotalPrice();
			for(int i = 0; i < li.size();i++){
				if(li.get(i)!= null){
				System.out.println(li.get(i).toString());
				}
			}
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		request.getRequestDispatcher("/jsps/medication_entity/q8_list_totalprice.jsp").forward(request, response);
	}

}
