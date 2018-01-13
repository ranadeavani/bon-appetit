<%-- 
    Document   : register
    Created on : Nov 25, 2017, 4:56:45 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration|Bon appetit</title>
<style>
     nav {
  width: 500px;
  height: 50px;
  border-radius: 5px;
  background: linear-gradient(to bottom, #272727 50%, #5a5a5a 100%);
  margin: 20;
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
  transition: all 200ms ease-in;
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
body{
  float: left;
  
  font-family:Bradley Hand ITC;
 font-size:20px;
color: white}


fieldset {
 
    border:0;
  font-size:20px;
  padding:20px;
  width:500px;
  line-height: 2;
    }
    legend {
        font-family:"Castellar";
        text-indent: 100px;
        color: whitesmoke;
        font-size: 2vw; 
    }
    b {
        font-size: 3vh; 
    }
    
        
  label {
    width:180px;
    clear:left;
    text-align:right;
    padding-right:10px;
}

input, label {
    float:left;
}

    


  
</style>

  </head>

  <img><body background="8_1.jpeg"></img>
       <nav>
        <ul>
    <li>
      <a href="index.jsp">
        <i class="fa fa-home fa-fw"></i>
        Back
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
     
    
     
     
          
  </ul>
					
                    </div>
				
				
			
</nav>

      
<form method="post" action="registration.jsp" onsubmit="return show()">
<fieldset>
    <legend>REGISTER:</legend>
    <b>
  <label for="dummy1">First Name:</label>
  <input id="dummy1" name="fname" value="" required="">

<label for="dummy2">Last Name:</label>
<input id="dummy2" name="lname" value="" required="">

<label for="dummy3">Username:</label>
<input id="dummy3" name="username" value="" required="">
    
<label for="dummy4">City:</label>
<input id="dummy4" name="city" value="" required="">
    
<label for="dummy5">Password:</label>
<input type ="password" id="dummy4" name="pwd" value="" required=""> 

<label for="dummy6"> &nbsp&nbsp&nbsp               </label>
<input type ="submit" value="Submit" />
    </b>
</fieldset> 
</form>


</b>
</body>
</html>
