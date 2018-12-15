<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--  No scriptlets!!! 
	  See http://download.oracle.com/javaee/5/tutorial/doc/bnakc.html 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<model" class="presentation.web.model.AddProductSale" scope="request"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../../resources/app.css"> 
<title>SaleSys: adicionar produto a venda</title>
</head>
<body>
<h2>Adicionar Produto a Venda</h2>
<form action="addedProductSale" method="post">
    <div class="mandatory_field">
    	<label for="qty">Quantidade:</label> 
    	<input type="text" name="qty" size="50" value="${model.qty}"/> 
    </div>
    <div class="mandatory_field">
		<label for="saleid">Sale ID:</label> 
		<input type="text" name="saleid" value="${model.saleId}"/> <br/>
    </div>
   <div class="mandatory_field">
   		<label for="productid">Produto ID:</label> 
   		<input type="text" name="productid" value="${model.productId}"/>
   </div>
   <div class="button" align="right">
   		<input type="submit" value="Criar Cliente">
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