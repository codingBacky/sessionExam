<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
--%>
<%
	String sessionId = session.getId();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String logCk = (String)session.getAttribute("logCheck");
			if( logCk != null ) {
				out.println( "<p>" + logCk + "님</p>");
				out.println("<a href=\"logout.jsp\">logout</a>");//href get 방식
			}else{
			
		%>
	<form action="login.jsp" method="post">
		<input type="text" name="userId"/><br />
		<input type="password" name="userPwd"/><br />
		<input type="submit" value="login" />
	</form>
		<%
			}
		%>
	<div>
		<section>
			<ul>
				<li><a href="sangpumDetail.jsp?spno=1111">상품목록1111</a></li>
				<li><a href="sangpumDetail.jsp?spno=2222">상품목록2222</a></li>
				<li><a href="sangpumDetail.jsp?spno=3333">상품목록3333</a></li>
				<li><a href="sangpumDetail.jsp?spno=4444">상품목록4444</a></li>
				<li><a href="sangpumDetail.jsp?spno=5555">상품목록5555</a></li>
			</ul>
		</section>
		<aside>
			<%@ include file = "./shoppingBasket.jspf" %>
		</aside>
		<a href="indexSub.jsp">goto sub_page</a>
	</div>
	<footer>
		<h4>backyserver</h4>
	</footer>
		
<%-- <p>sesstionId : <%= sessionId %></p>
<%
	Cookie[] cookies = request.getCookies();
	for(int i = 0; i < cookies.length; i++){
		System.out.println(cookies[i].getName() + "   :   " + cookies[i].getValue());
	}
%> 
--%>
</body>
</html>