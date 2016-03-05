<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<core:import url="cabecalho.jsp"></core:import>
	<form action="mvc?logica=AlterarContatoLogic">
	<core:forEach var="contato" items="${contatos}">
		Nome: <input type="text" value="${contato.nome }" name="nome" /> <br/>
		E-mail: <input type="text" value="${contato.email}" name="email" />  <br/>
		EndereÃ§o: <input type="text" value="${contato.endereco}" name="endereco" />  <br/>
		Data de Nascimento: <caelum:campoData value="${contato.dataNascimento.time}" id="dataNascimento"/>  <br/>
		<input type="submit" value="Gravar"/>
	</core:forEach>
	</form>
	<core:import url="rodape.jsp"></core:import>
</body>
</html>