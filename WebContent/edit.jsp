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
		<div class="messages">
			<c:forEach items="${messages}" var="message">
				<form action="message" method="post">
					<textarea name="text" cols="100" rows="5" class="tweet-box">{}</textarea>
					<input type="submit" value="更新">（140文字まで）
				</form>
			</c:forEach>
		</div>
	</div>
</body>
</html>