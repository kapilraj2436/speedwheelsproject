package hw2.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hw2.dao.data.CoectionImageData;
import hw2.dao.data.ConnectionData;
import hw2.model.Connection;

import static hw2.dao.data.ConnectionData.*;

/**
 * Servlet implementation class ConnectionServlet
 */
@WebServlet("/ConnectionServlet")
public class ConnectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnectionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Connection Servlet Executed");
		String connectionName = request.getParameter("connectionName");
		System.out.println("Connection name - "+connectionName);//Cruiser Bikes
		String [] data =  getConnectionData(connectionName);
		ArrayList connectionData =  new ArrayList();
		
		for(String d:data) {
			connectionData.add(d);	
		}
		request.setAttribute("connectionData", connectionData);
		request.setAttribute("connectionImagePath", CoectionImageData.getConnectioImagenData(connectionName));
		System.out.println("Invoking connection.jsp page");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/connection.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
