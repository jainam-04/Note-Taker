<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker : All Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1 class="text-center text-uppercase">All Notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top ml-3 mt-1" src="img/noteicon.png"
						style="max-width: 100px;" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p class="card-text">
							Last Updated on :-
							<%=note.getAddedDate().getDate()%>/<%=note.getAddedDate().getMonth() + 1%>/<%=note.getAddedDate().getYear() - 100%></p>
						<a href="delete_note?note_id=<%=note.getId()%>"
							class="btn btn-danger">Delete</a> <a
							href="edit_note.jsp?note_id=<%=note.getId()%>"
							class="btn btn-primary">Update</a>
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>

	</div>
</body>
</html>