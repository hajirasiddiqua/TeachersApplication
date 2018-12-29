package com.crud.controller;
import java.util.ArrayList;


import java.util.Date;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.crud.TeachDao.TeacherDao;
import com.crud.bean.TeacherBean;

	
	

	public class TeacherController extends HttpServlet
	{    
	    private static String INSERT = "/NewJionee.jsp";
	    private static String Edit = "/Edit.jsp";
	    private static String UserRecord = "/ListTeacher.jsp";
	    private static String Display="/display.jsp";
	private static String select="/Post.jsp";
	   private static String verify="/PrinciLogin.jsp";
	    private static String Search="/sear.jsp";
	    private static String SearchView="/SearchView.jsp";

	    private TeacherDao dao;

	    public TeacherController()
	    {
	       
	        dao = new TeacherDao();
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	    {
	    	PrintWriter out=response.getWriter();
	        String redirect="";
	       
	        
	       
	        String action = request.getParameter("action");
	        if(action.equalsIgnoreCase("insert"))
	        {
	        	
	        	
	        	TeacherBean user = new TeacherBean();
	        	
	            user.setfName(request.getParameter("firstName"));
	            user.setlName(request.getParameter("lastName"));
	            
	            try {
	                Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
	                user.setDob(dob);
	            } catch (ParseException e) {
	                e.printStackTrace();
	            }
	            user.setNum(request.getParameter("num"));
	            user.setEmail(request.getParameter("email"));
	            user.setSex(request.getParameter("sex"));
	            user.setAddress(request.getParameter("address"));
	            user.setQualification(request.getParameter("qua"));
	            
	          System.out.println(user);
	        	dao.addUser(user);
	        	redirect = "Welcome.jsp";
	            request.setAttribute("joinee", dao.getAllUsers());    
	           	System.out.println("Record Added Successfully");
	        }
	        else if (action.equals("delete"))
	        {
	            String userId = request.getParameter("userId");
	            int uid = Integer.parseInt(userId);
	            dao.removeUser(uid);
	            redirect = UserRecord;
	            request.setAttribute("joinee", dao.getAllUsers());
	            System.out.println("Record Deleted Successfully");
	        }
	        
	        else if (action.equalsIgnoreCase("Search"))
	        {
	            String pid = request.getParameter("pid");
	           
	            dao.getAllUsers1(pid);
	            redirect = SearchView;
	           
	            request.setAttribute("joinee", dao.getAllUsers1(pid));  
	            
	            System.out.println("Record SEARCHED Successfully");
	        }
	        
	        else if (action.equals("verify")){
	        	String uname=request.getParameter("uname");
	        	String pass=request.getParameter("pass");
	        	try{
	        		if(uname.equals("admin")&&pass.equals("123")){
	        			RequestDispatcher rd=request.getRequestDispatcher("ListTeacher.jsp");
	        			rd.forward(request, response);
	        			
	        		}
	        		else{
	        			out.println("<h1>Enter valid uesrname and and password</h1>");
	        			RequestDispatcher rd=request.getRequestDispatcher("PrinciLogin.jsp");
	        			rd.include(request, response);
	        		}
	        	}
	        	finally{
	        		out.close();
	        	}
	        }
	        
	        
	        
	        
	       
	        else if(action.equals("getUserById")){
	       	 String userId = request.getParameter("userId");
	            int uid = Integer.parseInt(userId);
	            dao.getUserById(uid);
	       	 redirect = UserRecord;
	            request.setAttribute("joinee", dao.getUserById(1));
	       }
	        
	        else if (action.equalsIgnoreCase("editform"))
	        {        	
	        	redirect = Edit;            
	        } 
	        
	        else if (action.equalsIgnoreCase("select"))
	        {   String userId = request.getParameter("userId");
	        
	        String po="";
	        
	         int uid = Integer.parseInt(userId);   
	         TeacherBean user = new TeacherBean();
	        	user.setId(uid);
	        	 String[] post1=request.getParameterValues("post");
	            
	             user.setPost(request.getParameter("post"));
	        	
	            dao.editUser1(user);
	            request.setAttribute("joinee", user);
	        	redirect = select;  
	        	
	        	System.out.println("Record was the updated Successfully");
	        	
	        } 
	        
	        else if (action.equalsIgnoreCase("edit"))
	        {	
	        	 
	        	String userId = request.getParameter("userId");
	            int uid = Integer.parseInt(userId);    
	            String num1=request.getParameter("num");
	           
	            TeacherBean user = new TeacherBean();
	        	user.setId(uid);
	            user.setfName(request.getParameter("firstName"));
	            user.setlName(request.getParameter("lastName"));
	           
	            user.setNum(num1);
	            
	            dao.editUser(user);
	            request.setAttribute("joinee", user);
	            redirect = Edit;
	            System.out.println("Record updated Successfully");
	         } 
	        
	        else if (action.equalsIgnoreCase("listUser"))
	        {
	            redirect = UserRecord;
	            request.setAttribute("joinee", dao.getAllUsers());
	         } 
	        else
	        {
	            redirect = INSERT;
	        }

	        RequestDispatcher rd = request.getRequestDispatcher(redirect);
	        rd.forward(request, response);
	    }

	    

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request, response);
	    }
	}

	

