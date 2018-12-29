<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PrinciLogin</title>
<style type="text/css">
<style>
.val_error{
color:red;
}
table{
border:4px black;}
a{
color:white;}
</style>
</head>

<body style="margin-top: 153px" bgcolor="#F08080">
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

  
      </div>




<center>
<fieldset style="width:450px;color:#FAFAD2;">
<legend><strong>Please enter to login</strong></legend>
<marquee>Login to check the newjoinees</marquee><hr>
<form method="POST" action='TeacherController' name="frmAddUser" onsubmit="return Validate()"><input type="hidden" name="action" value="verify" />
<table >

<tr>

<td>Username <sup>*</sup></sup></td>
<td><input type="text" name="uname" placeholder="uname is requored"  /><div id="uname_error" class="val_error"></div></td>

</tr>
<tr>
<td>Password  <sup>*</sup></td>
<td><input type="password" name="pass"  placeholder="pass is required"/><div id="pass_error" class="val_error"></div></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Submit" /></td></tr></table></fieldset></center></form>

</body>
</html>
<script type="text/javascript">
var uname=document.forms["frmAddUser"]["uname"];
        var pass=document.forms["frmAddUser"]["pass"];
        
        
         var uname_error=document.getElementById("uname_error");
          var pass_error=document.getElementById("pass_error");
          
           uname.addEventListener("blur", unameVerify, true);
        pass.addEventListener("blur", passVerify, true);
        
        function Validate(){
        	
        	if(uname.value==""){
        		uname.style.border="1px solid red";
        		uname_error.textContent="name is required";
        		uname.focus();
        		return false;}
        	}
        	if(pass.value==""){
     		pass.style.border="1px solid red";
        		pass_error.textContent="lastname is required";
        		pass.focus();
        		return false;
        	}
        	
        	
        	  function unameVerify(){
        	if(uname.value!=""){
        		uname.style.border="1px solid red";
        		uname_error.innerHTML="";
        		return true;
        	}	
        }
        
        function passVerify(){
        	if(pass.value!=""){
        		pass.style.border="1px solid red";
        		pass_error.innerHTML="";
        		return true;
        	}	
        }
        </script>