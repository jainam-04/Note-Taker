<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker : Add Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1 class="text-center">Please fill your note details</h1>
		<form action="save_note" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" id="title" placeholder="Enter here"
					name="title" required>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter your content here"
					class="form-control" style="height: 300px;" name="content" required></textarea>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>