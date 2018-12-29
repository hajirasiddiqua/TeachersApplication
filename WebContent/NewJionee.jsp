<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.crud.bean.TeacherBean"%>
<%@ page import="com.crud.TeachDao.TeacherDao"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New User</title>
<style>
.val_error{
color:red;
}
 *{
       box-sizing:border-box;
       }
           html,body{
               padding:0;
           }
         
           .card{
               display: inline-block;
             background-color:#F4A460;
          	 width: 300px;
               height: 500px;
               margin:112.5px;
            
            }
           .top{
               background:#D2B48C;
               height: 100px;
               top:10px;
           }
           .bottom{
               text-align: center;
               
           }
           p{
               font-size: 10px;
               
           }
        .avtar {
               position: absolute;
               left:82.3%;
               top:338px;
               transform: translateX(-634%);
            
           }
        .avtar   img{
            border-radius: 50%;
            border: 4PX SOLID white;
            height: 72px;
            width: 83px;
            
           }
            .container{
               display: flex;
               align-items: center;
               justify-content: center;
           height: 100%;
           }
           .button{
               position: absolute;
               height: 24px;
               width:24px;
               background: white;
               right:592px;
               top:251px;
               border-radius: 50%;
               text-align: center;
               line-height: 23px;s
               
           }
           p a{
           color:maroon;
           font-size:20px;}
           a{
           color:white;}
 
</style>
</head>
<body >
<%
TeacherBean user = new TeacherBean();
%>
<%
TeacherDao dao = new TeacherDao();
%>
       
<form method="POST" action='TeacherController' name="frmAddUser" onsubmit="return Validate()"><input
type="hidden" name="action" value="insert" />
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
  
      </div>
    
  
      
                    <div class="container">
       <div class="card">
       

        
           <div class="top">
             <div class="button">
             <a href="Welcome.jsp">
              <img src="images/close.jpg" alt="home" height="20px" width="20px"/>
             </a>
             </div>
              <div class="avtar"><img src="images/th (3).jpg"/></div>
           </div>
           <div class="bottom">
          
          <h2>h</h2>
          
           <div class="field-container">
<h2>JOINEE INFO</h2>

<table >


<tr>
<td>First Name <sup>*</sup></td>
<td><input type="text" name="firstName"  placeholder="First name is required"/><div id="fname_error" class="val_error"></div></td>

</tr>
<tr>
<td>Last Name <sup>*</sup></td>
<td><input type="text" name="lastName" placeholder="Last name is required" />
<div id="lname_error" class="val_error"></div></td>

</tr>
<tr>
<td>dob <sup>*</sup></td>
<td><input type="text" name="dob"  placeholder="Dob is required"/><div id="dob_error" class="val_error"></div>
</td>

</tr> 
    <tr>
<td>Mobile No<sup>*</sup></td>
<td><input type="text" name="num"   placeholder="Mobile is required"/><div id="no_error" class="val_error"></div>
</td>

    </tr> 
    <tr>
<td>Email<sup>*</sup></td>
<td><input type="text" name="email"  placeholder="email is required" /><div id="email_error" class="val_error"></div>
</td>

    </tr><tr>
<td>Sex<sup>*</sup></td>
<td><input type="radio" name="sex" value="Male" size="10">Male
<input type="radio" name="sex" value="Female" size="10">Female</td>
</tr>
<tr>
<td>Personal Address<sup>*</sup></td>
<td><textarea type="text" name="address"></textarea></td>
</tr>

<tr>
<td >Qualification<sup>*</sup></td><td>
<select name="qua" >
 <option selected=""  value="-1" >select qualification</option>
<option value="BE">BE</option>
<option value="BSC">BSC</option>
<option value="BCOM">BCOM</option>
<option value="BA">BA</option>
</select></td>

</tr>      
<tr>
<td></td>
<td><input type="submit" value="Submit" /></td>
</tr>

<p><a href="Update.jsp">Update</a></p>
</div>
         </div>
      </div>
</table>

</form>

</body>
</html>
<script type="text/javascript">
      
        
        
        var fname=document.forms["frmAddUser"]["firstName"];
        var lname=document.forms["frmAddUser"]["lastName"];
        var dob=document.forms["frmAddUser"]["dob"];
        var no=document.forms["frmAddUser"]["num"];
 var email=document.forms["frmAddUser"]["email"];
        var course=document.forms["frmAddUser"]["course"];
       
        var sex=document.forms["frmAddUser"]["sex"];
       
      
        var fname_error=document.getElementById("fname_error");
        var lname_error=document.getElementById("lname_error");
        var dob_error=document.getElementById("dob_error");
        var no_error=document.getElementById("no_error");
var email_error=document.getElementById("email_error");
var emailreg=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$/;
        var course=document.getElementById("course_error");
        

	
        var sex=document.getElementById("sex_error");
        
        fname.addEventListener("blur", fnameVerify, true);
        lname.addEventListener("blur", lnameVerify, true);
        dob.addEventListener("blur", dobVerify, true);
        no.addEventListener("blur", noVerify, true);

        email.addEventListener("blur", emailVerify, true);
        sex.addEventListener("blur", sexVerify, true);


        function Validate(){
        	
        	if(fname.value==""){
        		fname.style.border="1px solid red";
        		fname_error.textContent="name is required";
        		fname.focus();
        		return false;
        	}
        	if(lname.value==""){
        		lname.style.border="1px solid red";
        		lname_error.textContent="lastname is required";
        		lname.focus();
        		return false;
        	}
        	if(dob.value==""){
        		dob.style.border="1px solid red";
        		dob_error.textContent="dob is required";
        		dob.focus();
        		return false;
        	}
        	if(no.value==""){
        		no.style.border="1px solid red";
        		no_error.textContent="no is required";
        		no.focus();
        		return false;
        	}
        	else if(no.value.length!=10){
        		no_error.textContent="must conatain 10 nos is required";
        		no.focus();
        		return false;
        	}
        	
        	
        	if(email.value==""){
        		email.style.border="1px solid red";
        		email_error.textContent="email is required";
        		email.focus();
        		return false;
        	}
     		
        	if(sex.value==""){
        		no.style.border="1px solid red";
        		no_error.textContent="email is required";
        		no.focus();
        		return false;
        	}
        	
        	
        	
        	
        	
        }
       
        function fnameVerify(){
        	if(fname.value!=""){
        		fname.style.border="1px solid red";
        		fname_error.innerHTML="";
        		return true;
        	}	
        }
        function lnameVerify(){
        	if(lname.value!=""){
        		lname.style.border="1px solid red";
        		lname_error.innerHTML="";
        		return true;
        	}	
        }
        function dobVerify(){
        	if(dob.value!=""){
        		dob.style.border="1px solid red";
        		dob_error.innerHTML="";
        		return true;
        	}	
        }
        function noVerify(){
        	if(no.value!=""){
        		no.style.border="1px solid red";
        		no_error.innerHTML="";
        		return true;
        	}	
        }
        function courseVerify(){
        	if(course.value!="-1"){
        		no.style.border="1px solid red";
        		no_error.innerHTML="";
        		return true;
        	}	
        }
        function sexVerify(){
        	if(sex.value!="-1"){
        		no.style.border="1px solid red";
        		no_error.innerHTML="";
        		return true;
        	}	
        }
         function emailVerify(){
        	if(email.value!=""){
	        if(email.value.match(emailreg)){
        		email.style.border="1px solid red";
        		email_error.innerHTML="";
        		return true;
        	}
	else{
	email.style.border="1px solid red";
        		email_error.textContent="enter proper email is required";
        		email.focus();
        		return false;
}	
        }}
        
        </script>