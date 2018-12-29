<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.crud.bean.TeacherBean"%>
<%@ page import="com.crud.TeachDao.TeacherDao"%>
<html>
<head>
<style>a{
color:white;}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>
</head>
<body bgcolor="	#808080">
  <body style="margin-top: 153px" bgcolor="#f0f0f0">
        <div style="background-color: black; position: absolute; width: 100%; height: 150px; top: 0px; left: 0px">
       <table style="width: 100%; height: 90px;">
            <tr style="text-align: center; background-color: #000000">
                <td style="height: 150px">
                <img src="images/scho.jpg"  Height="150px" />
                </td>
                  <td width="60%" style="height: 150px">
        
      
<a href="Welcome.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="NewJionee.jsp">NEW JONIEE</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="About.jsp">ABOUT</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href=Contact.jsp>CONTACT</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href=Timings.jsp>TIME-TABLE</a>&nbsp;&nbsp;&nbsp;&nbsp;
</td> <td style="height: 150px"><a href=PrinciLogin.jsp>[Login]</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table>
</div>
<%
TeacherBean user = new TeacherBean();
%>
<%
TeacherDao dao = new TeacherDao();
%>
<center>
<fieldset style="width:450px;color:#FAFAD2;">
<legend><strong>Please enter to login</strong></legend>
<marquee>created by me</marquee><hr>
<form method="POST" action='TeacherController' name="frmEditUser">
<input type="hidden" name="action" value="edit" /> 
<%
String uid = request.getParameter("userId");
if (!((uid) == null)) {
int id = Integer.parseInt(uid);
user = dao.getUserById(id);
%>
<table>
<tr>
<td>User ID</td>
<td><input type="text" name="userId" readonly="readonly"
value="<%=user.getId()%>"></td>
</tr>
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" /></td>
</tr>

<tr>
<td>Mobile No</td>
<td><input type="text" name="num" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Update" /></td>
</tr>
</table>
<%
} else
out.println("ID Not Found");
%></center>
</form>
</body>
</html>