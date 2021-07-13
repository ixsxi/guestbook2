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


   <form action ="/guestbook2/gbc?action=insert" method="post">
      <table border='1'>
         <tr>
            <td>이름</td>
            <td><input type="text" name="name" value=""></td>
            <td>비밀번호</td>
            <td><input type="password" name="password" value=""></td>
         </tr>
         <tr>
            <td colspan ='4'><textarea name="content" style="width:470px;height:100px"></textarea></td>
         </tr>
         <tr>
            <td colspan ='4'><button type="submit">확인</button></td>
         </tr>
      
      </table>
   
   
   </form>
   <br>
   <!-- 리스트 출력 -->
   <%
      for(int i=0; i<guestbookList.size(); i++) {
   %>
   
         <table border='1' style="width:485px;">
         
            <tr>
               <td><%=guestbookList.get(i).getNo() %></td>
               <td><%=guestbookList.get(i).getName() %></td>
               <td><%=guestbookList.get(i).getReg_date() %></td>
               <td><a href="/guestbook2/gbc?action=dform&no=<%=guestbookList.get(i).getNo() %>">삭제</a></td>
            </tr>
            <tr>
               <td colspan ='4'><%=guestbookList.get(i).getContent() %></td>
            </tr>
         </table>
         <br>
   
   <%
      }
   %>
   

</body>
</html>