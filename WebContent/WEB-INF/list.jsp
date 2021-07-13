<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@ page import="java.util.List" %>
	<%@ page import="com.javaex.vo.GuestbookVo" %>
    
    <%
    
    List<GuestbookVo> guestbookList = (List<GuestbookVo>)request.getAttribute("gList");
    
    
    
    
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./guestbook2/gbc" method="get">
	<table border ="1">
		<tr>
			<td>이름</td>
			<td><input type="text"name="name"></td>
			
			<td>비밀번호</td>
			<td><input type="text" name="password"></td>
		
		</tr>
		<tr>
			<td colspan="4" ><textarea rows="5" cols="70" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="4"><button type="submit">확인</button> </td>
		</tr>	
	
	
	
	
	</table>
</form>

<%
		for(int i=0; i<guestbookList.size(); i++){
			
			%>
			<table border ="1">
				<tr>
					<td><%=guestbookList.get(i).getNo() %></td>
					<td><%=guestbookList.get(i).getName() %></td>
					<td><%=guestbookList.get(i).getReg_date() %></td>
					<td><a href="./deleteForm.jsp?no=<%=guestbookList.get(i).getNo()%>">삭제</a></td>
				</tr>
				<tr>
					<td colspan="6" ><%= guestbookList.get(i).getContent() %>
				</tr>
			
			
			
			</table>
			
			<% }
			%>	


</body>
</html>