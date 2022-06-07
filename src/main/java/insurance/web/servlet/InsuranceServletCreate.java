package insurance.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import insurance.domain.Insurance;
import insurance.service.InsuranceException;
import insurance.service.InsuranceService;


/**
 * Servlet implementation class UserServlet
 */

public class InsuranceServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsuranceServletCreate() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InsuranceService paymentservice = new InsuranceService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Insurance form = new Insurance();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		
	
		
		 
		form.setInsurance_id(Integer.parseInt(info.get(0)));
		form.setInsurance_company(info.get(1));	
		form.setStart_date(java.sql.Date.valueOf(info.get(2)));
		form.setEnd_date(java.sql.Date.valueOf(info.get(3)));
		form.setInsurance_plan(info.get(4));	
		form.setPatient_id(Integer.parseInt(info.get(5)));
		
		try {
			paymentservice.create(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | InsuranceException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
	}

}
