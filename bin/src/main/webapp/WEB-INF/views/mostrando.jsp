<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>CV</h2>
	<table>
		<tr>
			<td>OriginalFileName:</td>
			<td>${cv.originalFilename}</td>
		</tr>
		<tr>
			<td>Type:</td>
			<td>${cv.contentType}</td>
		</tr>
	</table>

	<h2>INE</h2>
	<table>
		<tr>
			<td>OriginalFileName:</td>
			<td>${ine.originalFilename}</td>
		</tr>
		<tr>
			<td>Type:</td>
			<td>${ine.contentType}</td>
		</tr>
	</table>
</body>
</html>