<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@  taglib prefix="c_rt" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c_rt:set var="staticUrl" value="http://s3.amazonaws.com/ertele" />
	<title>Okuma, video, müzik sayfalarını tek tıkla ertele gitsin | ertele.net</title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="ertele.net bazen ertelemk gerekir">
	
	<link href='http://fonts.googleapis.com/css?family=Nova+Square' rel='stylesheet' type='text/css'>
	
	<script type="text/javascript" src="http://www.google.com/jsapi"></script>
	<script type="text/javascript">google.load("jquery", "1.5.1");</script>
	<script type="text/javascript" src="${staticUrl}/jquery.watermark.js"></script>
	<script src="${staticUrl}/colorbox/jquery.colorbox.js"></script>
	
	<style>
		body {
			background: #1f1f1f;
			overflow: hidden;
			font-size: 16px;
		}
		#login-box {
			margin-top: 20px;
		}
		input, textarea { 
			padding: 9px;
			outline: 0;
			width: 200px;
			border:#C9C9C9 4px double;
			border-radius: 7px;
			background: #ddd;
			box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
			-moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
			-webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px}
		
		textarea { 
			width: 400px;
			max-width: 400px;
			height: 150px;
			line-height: 150%}
		
		input:hover, textarea:hover,
		input:focus, textarea:focus, .success, .error { 
			border-color: #C9C9C9; 
			-webkit-box-shadow: #fff 0px 0px 10px;}
		
		.form label { 
			margin-left: 10px; 
			color: #999999;}
			
		.submit input {
			width: 220px;
			padding: 9px 15px;
			background: #333;
			font-size: 14px;
			color: #fff;
			border:#C9C9C9 0 solid ; 
			-moz-border-radius: 5px;
			-webkit-border-radius: 5px;}
		.error {
			border-radius: 10px;
			width: 180px;
			margin: 10px 0px;
			padding:15px 10px 15px 50px;
			background-repeat: no-repeat;
			background-position: 10px center;
			color: #FFFFFF;
			background-color: #ff0000;
			background-image: url(${staticUrl}/error.png)}
		.success {
			border-radius: 10px;
			width: 180px;
			margin: 10px 0px;
			padding:15px 10px 15px 50px;
			background-position: 10px center;
			background-repeat: no-repeat;
			color: #1f1f1f;
			background-color: #00ff00;
			background-image: url(${staticUrl}/success.png)}
				
	</style>
</head>
<body>
	
	<div id="login-box"  align="center">
		<!--<c_rt:if test="${sessionScope.user != null }">
			<div class="success">Başarılı bir şekilde giriş yaptınız</div>
			<script>
				parent.$.colorbox.close();
			</script>
		</c_rt:if>-->
		<c_rt:if test="${errors != null }">
				<div class="error">
					<c_rt:forEach var="err" items="${errors}">
						${err}<br />
					</c_rt:forEach>
				</div>
		</c_rt:if>
		<div style="color: #fff">Test hesabı için, email:demo@demo.com pass:demo</div>
		<div id="login-form">
		<form:form class="form" action="${pageContext.request.contextPath}/login" method="post" commandName="user">
			<form:errors path="*" cssClass="error" element="div" />
				<p class="email">
					<form:input path="email" id="email"  />
				</p>
				<p class="pass">
					<form:password path="password" id="pass" />
				</p>
				<p class="submit">
					<input type="submit" value="Giriş" />
				</p>
		</form:form>

		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$("#email").watermark("Emailinizi giriniz");
			$("#pass").watermark("Şifrenizi giriniz");
		});
	</script>

</body>
</html>