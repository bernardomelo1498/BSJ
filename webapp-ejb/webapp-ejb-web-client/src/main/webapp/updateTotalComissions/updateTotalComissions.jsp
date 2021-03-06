<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--  No scriptlets!!! 
	  See http://download.oracle.com/javaee/5/tutorial/doc/bnakc.html 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<model" class="presentation.web.model.updateTotalComissionsModel" scope="request"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../resources/app.css"> 
<title>SaleSys: Atualizar Total de Comiss�o de Vendedor</title>
</head>
<body>
<h2>Atualizar Total de Comiss�o de Vendedor</h2>
<form action="updateTotalComissions" method="post">
    <div class="mandatory_field">
    	<label for="number">Vendedor NIF:</label> 
    	<input type="number" name="number" value=""/> 
    </div>
   <div class="button" align="right">
   		<input type="submit" value="Go">
   </div>
</form>
<c:if test="${model.hasMessages}">
	<p>Mensagens</p>
	<ul>
	<c:forEach var="mensagem" items="${model.messages}">
		<li>${mensagem} 
	</c:forEach>
	</ul>
</c:if>
</body>
</html>