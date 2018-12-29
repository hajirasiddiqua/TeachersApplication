<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.crud.bean.TeacherBean"%>
<%@ page import="com.crud.TeachDao.TeacherDao"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post Selection</title>

</head>
<body bgcolor="#FAFAD2">
</a>
 <a href="ListTeacher.jsp">
  <img src="images/back1.jpg" alt="home" style="width:80px;height:70px;border:0;">
</a>
 <a href="Welcome.jsp">
  <img src="images/lo.jpg" alt="home" style="width:80px;height:90px;border:0;margin-left:1412px;margin-top:-79px;">

</a>
<%
TeacherBean user = new TeacherBean();
%>
<%
TeacherDao dao = new TeacherDao();
%>
<center>

<fieldset style="width:450px;color:	#000000">
<legend><strong>Please enter the post</strong></legend>
<marquee>Post to be Selected</marquee><hr>

<form method="POST" action='TeacherController' name="frmEditUser">
<input type="hidden" name="action" value="select" /> 
<%
String uid = request.getParameter("userId");
if (!((uid) == null)) {
int id = Integer.parseInt(uid);
user = dao.getUserById(id);
%>


<table>
<tr>
 <p><a href="ListTeacher.jsp">View-All-Records</a></p>
<td>User ID</td>
<td><input type="text" name="userId" readonly="readonly"
value="<%=user.getId()%>"></td>
</tr>

<tr>
<td >post</td><td>
<select name="post" >
 <option selected=""  value="-1" >select post</option>
<option value="c">c</option>
<option value="c++">c++</option>
<option value="Eng">Eng</option>
<option value="Kan">Kan</option>
</select></td>
</tr>

 
 <tr>
<td></td>
<td><input type="submit" value="Update" /></td>
</tr>
</table>
<%
} else
out.println("ID Not Found");
%>

</fieldset></center>
</form>
</body>
</html>