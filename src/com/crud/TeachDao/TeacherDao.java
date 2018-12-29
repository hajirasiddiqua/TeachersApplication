package com.crud.TeachDao;



	

	import java.sql.Connection;


	import java.util.Date;

	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;
	import java.util.List;
	import com.crud.bean.*;
	
	import com.crud.db.DbConn;

	public class TeacherDao {

	    public Connection con=null;

	    public TeacherDao() {
	    	con = DbConn.getConnection();
	    }

	    public void addUser(TeacherBean userBean) {
	        try {
	        	System.out.println("done:");
	        	String sql = "INSERT INTO joinee(FIRSTNAME,LASTNAME,DOB,MOBILE_NO,EMAIL,SEX,ADDRESS,POST,QUALIFICATION) VALUES(?,?,?,?,?,?,?, ?, ?)";
	            PreparedStatement ps = con.prepareStatement(sql);
	            
	           
	            ps.setString(1, userBean.getfName());
	            ps.setString(2, userBean.getlName()); 
	            ps.setDate(3, new java.sql.Date(userBean. getDob().getTime())); 
	            ps.setString(4, userBean.getNum());
	            ps.setString(5,userBean.getEmail());
	            ps.setString(6, userBean.getSex());
	            ps.setString(7,userBean.getAddress());
	            ps.setString(8, userBean.getPost());
	            ps.setString(9, userBean.getQualification());
	            ps.executeUpdate();
	            ResultSet rs=ps.getGeneratedKeys();
	            System.out.println("id:"+rs.getInt(1));

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    public void removeUser(int userId) {
	        try {
	        	String sql = "DELETE FROM joinee WHERE USERID=?";
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setInt(1, userId);
	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	      }
	  /*  public userBean searchUser(String pid){
	    	
	       
	    	try{
	    		
	    		ArrayList al = null;
	            ArrayList pid_list = new ArrayList();
	            String sql = "select * from users where FIRSTNAME=?";
	 
	           
	    		   PreparedStatement ps = con.prepareStatement(sql);
	               ResultSet rs = ps.executeQuery();
	               while (rs.next()) {
	                   al = new ArrayList();
	    
//	                   out.println(rs.getString(1));
//	                   out.println(rs.getString(2));
//	                   out.println(rs.getString(3));
//	                   out.println(rs.getString(4));
	                   al.add(rs.getString(1));
	                   al.add(rs.getString(2));
	                   al.add(rs.getString(3));
	                   al.add(rs.getString(4));
	    
	                   System.out.println("al :: " + al);
	                   pid_list.add(al);}
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        
	   // */
	    
	    public void editUser(TeacherBean userBean) {    	
	    	try {
	    		String sql = "UPDATE joinee SET FIRSTNAME=?, LASTNAME=?, MOBILE_NO=?" +
	            " WHERE USERID=?";
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setString(1, userBean.getfName());
	            ps.setString(2, userBean.getlName()); 
	           
	            ps.setString(3, userBean.getNum());
	          
	         
	            
	         ps.setInt(4, userBean.getId());
	         
	            ps.executeUpdate();            

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    public List getAllUsers() {
	        List users = new ArrayList();
	        try {
	        	String sql = "SELECT * FROM joinee";

	            PreparedStatement ps = con.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                TeacherBean userBean = new TeacherBean();
	                userBean.setId(rs.getInt("userid"));
	                userBean.setfName(rs.getString("firstname"));
	                userBean.setlName(rs.getString("lastname"));   
	                userBean.setDob(rs.getDate("dob"));  
	                userBean.setNum(rs.getString("mobile_no"));
	                userBean.setEmail(rs.getString("email"));
	               userBean.setSex(rs.getString("sex"));
	               userBean.setAddress(rs.getString("address"));
	               userBean.setPost(rs.getString("post"));
	              users.add(userBean);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	    return users;
	}
	        public List getAllUsers1(String pid) {
	            List users = new ArrayList();
	            try {
	            	String sql = "SELECT * FROM joinee WHERE FIRSTNAME=' "+pid+"'";

	                PreparedStatement ps = con.prepareStatement(sql);
	             
	               
	                ps.setString(1, pid);
	               
	                ResultSet rs = ps.executeQuery();
	                while (rs.next()) {
	                	TeacherBean userBean = new TeacherBean();
	                    userBean.setId(rs.getInt("userid"));
	                    userBean.setfName(rs.getString("firstname"));
	                    userBean.setlName(rs.getString("lastname"));   
	                    userBean.setDob(rs.getDate("dob"));  
	                    userBean.setNum(rs.getString("mobile_no"));
	                    userBean.setEmail(rs.getString("email"));
	                   userBean.setSex(rs.getString("gender"));
	                   userBean.setAddress(rs.getString("address"));
	                   userBean.setPost(rs.getString("post"));
	                  users.add(userBean);
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }

	        return users;
	    }

	        public TeacherBean getUserById(int userId) {
	        	TeacherBean userBean = new TeacherBean();
	            try {
	            	String sql = "SELECT * FROM joinee WHERE USERID=?";
	                PreparedStatement ps = con.prepareStatement(sql);
	                ps.setInt(1, userId);
	              
	                
	                ResultSet rs = ps.executeQuery();

	                if (rs.next()) {
	                	userBean.setId(rs.getInt("userid"));
	                	userBean.setfName(rs.getString("firstname"));
	                	userBean.setlName(rs.getString("lastname"));     
	                	userBean.setDob(rs.getDate("dob"));
	                	userBean.setPost(rs.getString("post"));
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	            return userBean;
	        }
	    public TeacherBean getUserAll(int userId,String firstName) {
	    	TeacherBean userBean = new TeacherBean();
	        try {
	        	String sql = "SELECT * FROM joinee WHERE USERID=?";
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setInt(1, userId);
	            ps.setString(2, firstName);
	           
	        
	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {
	            	userBean.setId(rs.getInt("userid"));
	            	userBean.setfName(rs.getString("firstname"));
	            	     
	            	
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return userBean;
	    } 
	    public void editUser1(TeacherBean userBean) {    	
	    	try {
	    		String sql = "UPDATE joinee SET  POST=?" +
	            " WHERE USERID=?";
	            PreparedStatement ps = con.prepareStatement(sql);
	         
	         ps.setString(1, userBean.getPost());
	            
	         ps.setInt(2, userBean.getId());
	            ps.executeUpdate();            

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	   
	}




