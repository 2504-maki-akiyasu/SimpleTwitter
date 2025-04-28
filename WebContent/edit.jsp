<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>つぶやきの編集</title>

    	<link href="./css/style.css" rel="stylesheet" type="text/css">
    </head>
<body>
	<div class="main-contents">
		<c:if test="${ not empty errorMessages }">
			<div class="errorMessages">
				<ul>
					<c:forEach items="${errorMessages}" var="errorMessage">
						<li><c:out value="${errorMessage}" />
					</c:forEach>
				</ul>
			</div>
			<c:remove var="errorMessages" scope="session" />
		</c:if>

		<div class="messages">
			<div class="editMessage">
				<form action="edit" method="post">
					<textarea name="edittext" cols="100" rows="5" class="tweet-box">${editMessage.text}
					</textarea>
					<input type="hidden" name="messageId" value="${editMessage.id}">
					<input type="submit" value="更新">
				</form>
				<a href="./">戻る</a>
			</div>
		</div>
	</div>
	<div class="copyright">Copyright(c)Maki</div>
</body>
</html>