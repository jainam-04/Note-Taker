<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker : Edit Note</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1 class="text-center">Edit your note here</h1>
		<form action="edit_note" method="post">
			<%
			int noteId = Integer.parseInt(request.getParameter("note_id"));
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);
			%>
			<input type="hidden" value="<%=note.getId()%>" name="note_id" />
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" id="title" placeholder="Enter here"
					name="title" value="<%=note.getTitle()%>" required>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter your content here"
					class="form-control" style="height: 300px;" name="content" required><%=note.getContent()%>
				</textarea>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Save your
					note</button>
			</div>
			<%
			s.close();
			%>
		</form>
	</div>
</body>
</html>