<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
<link href="css/jquery.css" rel="stylesheet" />
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<title>Adiciona contato</title>
</head>
<body>
	<core:import url="cabecalho.jsp"></core:import>
	<form action="adicionaContatos">
		Nome: <input type="text" name="nome" /> <br/>
		E-mail: <input type="text" name="email" />  <br/>
		EndereÃ§o: <input type="text" name="endereco" />  <br/>
		Data de Nascimento: <caelum:campoData id="dataNascimento"/>  <br/>
		<input type="submit" value="Gravar"/>
	<core:import url="rodape.jsp"></core:import>
	</form>
</body>
</html>