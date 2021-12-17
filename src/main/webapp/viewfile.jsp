<%@page import="java.util.List"%>
<%@page import="model.BO.CheckLoginBO"%>
<%@page import="model.Bean.urlFile"%>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/account1.css">
    <title>Document</title>
</head>
<body>
<%

ArrayList<urlFile> l = (ArrayList<urlFile>)request.getSession().getAttribute("url123");
	for(int i = 0 ; i< l.size();i++){
%>
<div class="hinh1" >
          <div>
          <form action="pdf" method="post">
         <div class="ten">
         <% if(l.get(i).getStatus()==0 )
         {%>
           <p><%=l.get(i).getUrl()%> ...Processing.... </p>
         <%}else{ %>
         <input type="submit" class="dangxuata" name ="ip123" value="<%=l.get(i).getUrl()%>">
        <%} %>
        </div>
			 </form>
            </div>
            
      
			
    </div>
      <%} %>    
</body>
</html>