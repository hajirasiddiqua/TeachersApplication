<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.crud.bean.TeacherBean"%>
<%@ page import="com.crud.TeachDao.TeacherDao"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All User</title><style type="text/css">
table{
border:4px solid #1a0013;
margin:120px 100px 50px 250px;
/*border-collapse:collapse;*/
}
th,td{
border:1px solid black;
padding:.2em.5em;

}
th{
color:white;
background-color:lightgrey;
}
tr:nth-child(odd){
background-color: #E6E6FA;
}
tr:nth-child(even){
background-color: #B0C4DE;
}</style>
</head>
<body bgcolor="#FFE4B5"><div>

<%
TeacherDao dao = new TeacherDao();
List<TeacherBean> userList = dao.getAllUsers();
%>
 <table width="700px" align="center"
               style="border:1px solid #000000;">
               <tr>
                <td colspan= 8 align="center"
                    style="background-color:teal">
                    <b>List Record</b></td>
            </tr>
 <tr style="background-color:lightgrey;">
<th>Id</th>
<th>FULL Name</th>

<th>Date</th>
<th>MOBILE NO</th>
<th>Email</th>
<th>Gender</th>
<th>Adress</th>
<th>Concerned for</th>
</tr>
<tr >
<%
for (TeacherBean user : userList) {
%>
<td><%=user.getId()%></td>
<td><%=user.getfName()%>  <%=user.getlName()%></td>

<td><%=user.getDob()%></td>
<td><%=user.getNum() %></td>
<td><%=user.getEmail() %></td>
<td><%=user.getSex() %></td>
<td><%=user.getAddress() %></td>
<td><%=user.getPost() %></td>

<td><a
href="TeacherController?action=edit&userId=<%=user.getId()%>">Update</a></td>

</tr>
<%
}
%>
</table>
<
</body>
</html>