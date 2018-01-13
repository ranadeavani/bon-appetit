

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bon Appetit|Login</title>
    </head>
    <body background = "6.jpeg">
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
        <form method="post" action="login.jsp">
                        <br><br><br><br><br><br><br><br><br>
            <table border="2" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pwd" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            
        </form>
    </body>
</html>