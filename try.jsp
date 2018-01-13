<% 
    if (session.getAttribute( "username" ) == null )
    {
        response.sendRedirect("index.jsp");
    }
   
  else
    {
  %>      
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Menu</title>
<style type="text/css"> 
    nav {
  width: 500px;
  height: 50px;
  border-radius: 5px;
  background: linear-gradient(to bottom, #272727 50%, #5a5a5a 100%);
  margin: 0 auto;
  box-shadow: 0px 0px 5px 2px black;
}

nav ul {
  text-align: center;
  margin-right: 5px;
}

nav ul li {
  list-style-type: none;
  float: left;
}

nav ul li a {
  text-decoration: none;
  color: white;
  display: block;
  width: 105px;
  height: 50px;
  line-height: 50px;
  transition: all 250ms ease-in;
}

nav ul li a:hover {
  height: 55px;
  border-radius: 5px;
  line-height: 55px;
  background: linear-gradient(to top, #272727 50%, #5a5a5a 100%);
  box-shadow: 0px 0px 1px 1px white inset;
  box-shadow: 0px 0px 1px 1px white;
}

.fa {
  color: #ff8b20;
  margin-right: 5px;
}


   b {
  float:right;
  
  font-family:Bradley Hand ITC;
  font-size:25px;
    color: white;}
	.container .redO{
		position:relative;
		top:-250px;
		width:250px;
		height:250px;
		background:grey;
		opacity:0;
	}
	.container:hover .redO
	{
		opacity:0.7;
	}
#myDIV {
    width: 1500px;
    height: 6300px;
    background: black;
    -webkit-animation: mymove 5s infinite; /* Chrome, Safari, Opera */
    animation: mymove 3s infinite;
	}
	@-webkit-keyframes mymove {
    from {background-color: black;}
    to {background-color: #404040;}
    
	
	


}
button {
border-radius: 12px;
    background-color: #ff4d4d;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<link rel="stylesheet" href="styles.css">
<body>
      <nav>
   <ul>
    <li>
      <a href="home.jsp">
        <i class="fa fa-home fa-fw"></i>
        Home
      </a>
    </li>
    
    <li>
      <a href="#events">
        <i class="fa fa-trophy 
        fa-fw"></i>
        About Us
      </a>
     </li>
    
     <li>
       <a href="#">
         <i class="fa fa-info-circle fa-fw"></i>
         Contact Us
       </a>
     </li>
     
     <li>
       <a href="logout.jsp">
         <i class="fa fa-camera fa-fw"></i>
         Logout
       </a>
     </li>
     
     
          
  </ul>
					
                    </div>
				
				
			</nav>
     <b> Hello, <%= session.getAttribute( "username" ) %> </b>
<div id="myDIV">
<h1 align="center"><font face="Bradley Hand ITC" size="40">Menu</h1></font>
<hr width="50%">
<p align="center"> Cibo(Italian) </p>
<hr width="50%">
<table align="center">
<tr>
<td>
<div class="container">
    <form action="EndPage.jsp" method="post" onsubmit='return check()'>
    <img src="16.png" height="250" width="250"  onclick="alert('image click');" /> 
    <input type='text' name='qty' id='qty[]' value="0" /> 
    
      
  
    <div class="redO">
<br>
<i><center>Spagetti</center></i>
<br>
<i><center>100 Rs.</center></i>
</div>
</div>
</td>
<td>
<div class="container">
    
    <img src="11.jpg" height="250" width="250" />
<input type='text' name='qty' id='qty[]' value="0" />

	<div class="redO">
	<br><br><br>
<i><center>Tuscan Farfalle</center></i>
<br>
<i><center>150 Rs.</center></i>
</div>
</div>
</td>
</tr>
 
<tr>
<td>
<div class="container">
    <img src="12.jpg"  height="250" width="250"  />
<input type='text' name='qty' id='qty[]' value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Farmhouse Pizza</center></i>
<br>
<i><center>250 Rs.</center></i>
</div>
</div>
</td>
<td>
<div class="container">
    <img src="14.jpg" height="250" width="250"  />
        <input type='text' name='qty' id='qty[]' value="0" />

	<div class="redO">
	<br><br><br>
<i><center>Lasagne</center></i>
<br>
<i><center>180 Rs.</center></i>
</div>
</div>
</td>
</tr>
</table>
<table align="center">
<p align="center"> From the heart of China </p>
<hr width="50%">
<tr>
<td>
<div class="container">
    <img src="23.jpg" height="250" width="250"  />
        <input type='text' name='qty' id='qty[]' value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Pho</center></i>
<br>
<i><center>150 Rs.</center></i>
</div>
</div>
</td>
<td>

<div class="container">
    <img src="15.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Honey Chilli Chicken</center></i>
<br>
<i><center>250 Rs.</center></i>

</div>
</div>
</td>
</tr>
<tr>
<td>
<div class="container">
    <img src="17.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]' value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Seafood Ensemble</center></i>
<br>
<i><center>300 Rs.</center></i>

</div>
</div>
</td>
<td>
<div class="container">
    <img src="13.jpg" height="250" width="250"  />
   <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Chilli Garlic Noodles</center></i>
<br>
<i><center>190 Rs.</center></i>

</div>
</div>
</td>
<tr>
</table>
<table align="center">
<p align="center"> Indian </p>
<hr width="50%">
<tr>
<td>
<div class="container">
    <img src="4.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Mutton Biriyani</center></i>
<br>
<i><center>300 Rs.</center></i>

</div>
</div>
</td>
<td>

<div class="container">
    <img src="18.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	
	<div class="redO">
	<br><br><br>
<i><center>Butter Chicken</center></i>
<br>
<i><center>250 Rs.</center></i>

</div>
</div>
</td>
</tr>
<tr>
<td>
<div class="container">
    <img src="19.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]' value="0"/>
	<div class="redO">
	<br><br><br>
<i><center>Kadhai Panneer</center></i>
<br>
<i><center>170 Rs.</center></i>

</div>
</div>
</td>
<td>
<div class="container">
    <img src="20.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Naan Daal Makhani</center></i>
<br>
<i><center>250 Rs.</center></i>

</div>
</div>
</td>
<tr>
</table>
<table align="center">
<p align="center"> Continental </p>
<hr width="50%">
<tr>
<td>
<div class="container">
    <img src="21.jpg" height="250" width="250"  />
   <input type='text' name='qty' id='qty[]' value="0"/>
	<div class="redO">
<br><br><br>
<i><center>Barbeque Cottage Cheese</center></i>
<br>
<i><center>230 Rs.</center></i>
</div>
</div>
</td>
<td>

<div class="container">
    <img src="22.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
<br><br><br>
<i><center>Roasted Chicken</center></i>
<br>
<i><center>280 Rs.</center></i>
</div>
</div>
</td>
</tr>
<tr>
<td>
<div class="container">
    <img src="23.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]' value="0"/>
	<div class="redO">
<br><br><br>
<i><center>Noodle Soup</center></i>
<br>
<i><center>160 Rs.</center></i>
</div>
</div>
</td>
<td>
<div class="container">
    <img src="24.jpg" height="250" width="250"  />
   <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
<br><br><br>
<i><center>Tacos</center></i>
<br>
<i><center>100 Rs.</center></i>
</div>
</div>
</td>
<tr>
</table>
<table align="center">
<p align="center"> Drinks </p>
<hr width="50%">
<tr>
<td>
<div class="container">
    <img src="25.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]' value="0"/>
	<div class="redO">
	<br><br><br>
<i><center>Pineapple Juice</center></i>
<br>
<i><center>120 Rs.</center></i>

</div>
</div>
</td>
<td>

<div class="container">
    <img src="26.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]' value="0" />
	<div class="redO">
<br><br><br>
<i><center>Beer</center></i>
<br>
<i><center>125 Rs.</center></i>
</div>
</div>
</td>
</tr>
<tr>
<td>
<div class="container">
    <img src="27.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Macciato</center></i>
<br>
<i><center>100 Rs.</center></i>

</div>
</div>
</td>
<td>
<div class="container">
    <img src="28.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
<br><br><br>
<i><center>Very Berry Juice</center></i>
<br>
<i><center>100 Rs.</center></i>
</div>
</div>
</td>
<tr>
</table>
<table align="center">
<p align="center"> Desserts </p>
<hr width="50%">
<tr>
<td>
<div class="container">
    <img src="29.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Blueberry Pancakes</center></i>
<br>
<i><center>130 Rs.</center></i>

</div>
</div>
</td>
<td>

<div class="container">
    <img src="30.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
	<br><br><br>
<i><center>Cheesecake</center></i>
<br>
<i><center>120 Rs.</center></i>

</div>
</div>
</td>
</tr>
<tr>
<td>
<div class="container">
    <img src="31.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
<br><br><br>
<i><center>Chocolate Mousse</center></i>
<br>
<i><center>140 Rs.</center></i>
</div>
</div>
</td>
<td>
<div class="container">
    <img src="32.jpg" height="250" width="250"  />
    <input type='text' name='qty' id='qty[]'value="0" />
	<div class="redO">
<br><br><br>
<i><center>Caramel Custard</center></i>
<br>
<i><center>170 Rs.</center></i>
</div>
    
</div>
</td>
<tr>
</table>
<center>
    <p> Delivery address:<br>
        <textarea name="address" rows="4" cols="50" required=""></textarea></p>
<button type="submit" name="bill" class="button button2" ><p>Bill Please!<p></button>
</center>
</form>
</div>

</html>

<script>
    function check()
    {
        var i=0;
        var a=document.getElementsByName("qty[]");
        var n=a.length;
        while(i<n){
                   var qty=document.getElementsByName("qty[]")[i].value;
                  // var item=document.getElementsByName("item[]")[i].value;
                 
                   if(qty>0)
                   {
                       //return false;
                    alert(qty);
           
                     
                
                     //Class.forName("com.mysql.jdbc.Driver");  
                     //Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/bon","root","root");  
                     //Statement st=con.createStatement();
                     //int l = st.executeUpdate("insert into bill_details(Bill_ID, item_id, quantity) values ('7','7','7')");
                     //out.print(l);
                     
                    
                       }
                   i++;
                   //return false;
                  }
        //return true;
    }
</script>

<%
}
%>