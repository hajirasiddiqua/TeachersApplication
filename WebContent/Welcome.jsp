<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>

   <head> 
       <meta charset="utf-8">
       <meta name="viewport" content="width=device-width,initial-scale=1.0">
      <title>The New School</title> <style>                              
           body{
               margin:0px;
               margin-top: 0px;
           }
 .grid-wrapper1{
 display:grid;
 grid-template-columns:repeat(6,1fr);
  grid-template-rows:300px 200px 10px 150px;
  grid-gap:2rem;
  background:#F5F5F5;
  padding:1rem;
 }
 
 
   
 }
 .grid-item1
 {
 background:yellow;
 }
 .grid-item-11{
  background:pink;
     margin: 0px;
     grid-column:1/-1;
  
 }
 .grid-item-12{
  background:#E0E0E0;
     grid-column-start: 1;
     grid-column-end: 3;
     box-sizing: border-box;
      box-shadow: -5px 7px 2px 2px;
     color: #010610;
     grid-row-end: 5;
     grid-row-start: 2
         ;
  
 }
 .grid-item-13{
 background:#E0E0E0;
     grid-column-start:3; 
     grid-column-end: 5;
     box-sizing: border-box;
      box-shadow: -5px 7px 2px 2px;
     color: #010610;
     
           }
 .grid-item-14{
  background:green;
      background:#E0E0E0;
     grid-column-start:5; 
     grid-column-end: 7;
     box-sizing: border-box;
     box-shadow: -5px 7px 2px 2px;
     color: #010610;
 }
 .grid-item-15{
 
     grid-column-start: 3;
     grid-column-end: 5;
     width: 10px;
     min-height: 5px;
     
 }
 .grid-item-16{
  background:blue;
     width: 15px;
 }
           
           header{
               background-color: blueviolet;
               border-top-left-radius: 25px;
               border-top-right-radius: 25px;
               width:100%;
               height:100px;
               text-align: center;
           }
           footer{
               background-color: darkviolet;
               border-bottom-left-radius: 25px;
               border-bottom-right-radius: 25px;
               width:100%;
               height:100px;
               text-align: center;
               padding: 15px;
           }
          
           ul.li:hover{
               color: firebrick;
               cursor: pointer;
               
           } 
           
               
           
           .col-10.img{
               background-color: pink;
               float: right;
               width:10px;
               height:10px;
               margin-bottom: auto;
           }
         .grid-item-11 img{
               width: 100%;
               height: 299px;
           }
           .col-10 img{
               float: right;
                width: 78px;
               height: 35px;
             
               padding-top: 175px;

           }
           .grid-item-15 img{
               width:130px;
               height: :15px;
               
           }
           .grid-item-16 img{
               width:106px;
           }
     
           #container ul{
list-style-type:none;
}
#container ul li{

width:154px;
border:none;
height:50px;
line-height:74px;
text-align:center;
float:right;
color:black;
font-size:18px;
position:relative;
}
#container ul li:hover{

}
#container ul ul{
display:none;
    background-color:lightcyan;
}
#container ul li:hover>ul{     
display:block;
}
#container ul ul ul{
margin-left:150px;
top:0px;
position:relative;
}a{
color:white;}
p{
font-family: cursive ;}
       </style>
              
      </head>

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
        <div class="grid-wrapper1">
 <div class="grid-item1 grid-item-11">
     <img src="images/sc.jpg" alt="khkh" width="100px" height="10px"/>
            </div>
 <div class="grid-item1 grid-item-12">
      
<p style="text-align:center;font-size:large;"><p style="serif;text-align:center;font-size:large;"> EDUCATIONAL APPROACH</p>
 <p style="text-align: left;color:black; ">
We will fulfill our mission by extending The New School's legacy as a nontraditional university and community, nimble and responsive to change, that:
<br/><br/>
1)Focuses on and engages with critical contemporary issues<br/>
2)Prioritizes humanity and culture in designing systems and environments to improve the human condition, an approach that draws on design thinking and the liberal, creative, and performing arts<br/>
3)Places collaborative, project-based learning at the center of the educational experience<br>
4)Takes full advantage of our New York City location and connectivity to global urban centers<br></p></div>
 
 <div class="grid-item1 grid-item-13"><p style="text-align:center;font-size:large;"><p style="text-align:center;font-size:large; style="serif"> MISSION</p>
 <p style="text-align: left;color:black; ">The New School prepares students to understand, contribute to, and succeed in a rapidly 
 changing society, 
thus making the world a better and more just place. 
We will ensure that our students develop both the skills that
 a sound education provides and the competencies essential for success and 
 leadership in the emerging creative economy. 
.</p></div>
   
 <div class="grid-item1 grid-item-14"><P style="sans-serif"> <p style="text-align: center;font-size: large;color:solid black;">VISION</p>
    <p style="text-align: left;COLOR:BLACK;font-size: MEDIUM">
We are and will be a university where design and social research drive approaches 
to studying issues of our time, such as democracy, urbanization,
 technological change, economic empowerment, sustainability, migration, and globalization. 
 .</p></div>
 <div class="grid-item1 grid-item-15">
      <img src="images/child.jpg" alt="jh"/>
           </div>
            
<div class="grid-item1 grid-item-16"> <img src="images/girl.jpg" alt="jh"/>
   
            </div>
           
          
          <div class="col-10">
          <img src="images/th.jpg" alt="jh"/>
             </div></div>
           
            <div style="background-color: black; position: absolute; width: 100%; height: 80px; ">
        <table style="width: 100%; height: 90px;">
         <tr style="text-align: center; width: 100%;">
           <td> <img src="images/soc_icons.png" alt="all" Width="120px"/>  </td>
            </tr>
            <tr style="text-align: center; width: 33%;">
                <td>haj &copy; copyright</td></tr></table></div>
         
          
    </body></html>