<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false"%>
<input type="text" value="${value}" id="${id}" name="${id}" />

<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>