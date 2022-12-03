<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="dao.BoardDAO, bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form:form commandName="boardVO" action="../editok" method="POST">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
	<tr><td>카테고리:</td><td><input type="text" name="category" value="<%= u.getCategory()%>"/></td></tr>
	<tr><td>제목:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><td>글쓴이:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form:form>

</body>
</html>