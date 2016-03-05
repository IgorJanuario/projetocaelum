<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html language="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Contatos</title>
<style type="text/css">
	table, tr{
		border: 1px solid black;
    	border-collapse: collapse;
    	width: 100%;
    	text-align: center;
	}
</style>
</head>
<body>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
	<core:import url="cabecalho.jsp"/>
	<table>
		<tr>
			<td>Nome</td>
			<td>E-mail</td>
			<td>Endereço</td>
			<td>Data de Nascimento</td>
		</tr>	
		<core:forEach var="contato" items="${dao.lista}" varStatus="id">
		<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
			<td> ${contato.nome}</td>
			<td> 
				<core:choose>
					<core:when test="${not empty contato.email}"> 
						<a href="mailto:${contato.email}">${contato.email}</a>
					</core:when>
					<core:otherwise>
						E-mail não informado
					</core:otherwise>
				</core:choose>
			</td>
			<td> ${contato.endereco}</td>
			<td> <fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
		</tr>
	</core:forEach>
	</table>
	<core:import url="rodape.jsp"/>
	</body>
</html>