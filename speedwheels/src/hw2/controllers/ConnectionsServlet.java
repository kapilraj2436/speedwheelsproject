package hw2.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConnectionsServlet
 */
@WebServlet("/ConnectionsServlet")
public class ConnectionsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConnectionsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("/ConnectionsServlet execute");

		List<String> two_wheelers_connections_list = new ArrayList<String>();

		two_wheelers_connections_list.add("Standard Motorbikes");
		two_wheelers_connections_list.add("Cruiser Bikes");
		two_wheelers_connections_list.add("Sport Bikes");
		two_wheelers_connections_list.add("Scooters");
		request.setAttribute("twowheelconnections", two_wheelers_connections_list);

		List<String> four_wheelers_connections_list = new ArrayList<String>();

		four_wheelers_connections_list.add("Crossover");
		four_wheelers_connections_list.add("SUV");
		four_wheelers_connections_list.add("Sedan");
		request.setAttribute("fourwheelconnections", four_wheelers_connections_list);
		System.out.println("Invoking connections.jsp page");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/connections.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
