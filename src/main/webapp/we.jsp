<%@page import="model.BO.CheckLoginBO"%>
<%@page import="model.Bean.Account"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/account1.css">
    <title>Document</title>
</head>
<body>
    <div class="header">
        <div class ="logochu">
            <p class="p2">The world's number one file converter</p>
            <p class="p1">Fast, convenient, different experience  </p>
             <hr>
        </div>
      
        <%
		Account a = (Account)request.getSession().getAttribute("account");
        
		if (a!=null){
			
	%>
			<div class="hinh1" >
         <img src="https://lh6.googleusercontent.com/X7JYEBXkxFMLWlXgsipqGbOYN6j9Lh_83FdKL-WPAtVKZsNnwrEE-VJVR83IXO73jgq4NrVuwPER2JVgkuyIpFMDMLzN3kbY1uHnD2_5enIx52yB-0IWf_VIfgFcpQBb4Yp3-an0" alt="" class="hinh">
         <div>
          <form action="Homeop" method="post">
         <div class="ten">
         <input type="hidden"  name ="ip123" value="<%=a.getId()%>">
         <p class="thongtin"><%=a.getId()%></p>
        </div>
        <hr>
         <div >
			<input type="submit" value="Convert files" class="dangxuata" >
			<br>
			 </form>
			  <form action="view" method="post">
			  <input type="hidden"  name ="ip1234" value="<%=a.getId()%>">
            <input type="submit" value="View files" class="dangxuata" > 
            </form>
            </div>
            
            <form action="LogoutServlet" >
             
			<input type="submit" value="Login out" class="dangxuat" >
				
			</form>
			
    </div>
</div>
				
	
			
		</form>
</div>
</div>
			
<%	
	
		} else{
			response.sendRedirect("Login.jsp");
		}
	%>
        
</body>
</html>