<%@ page import="org.unb.Arrematante" %>



<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: arrematanteInstance, field: 'nome', 'error')} ">
		<label class="control-label col-md-3" for="nome">
			<g:message code="arrematante.nome.label" default="Nome:" />
			
		</label>
		<div class="col-md-4">
			<g:textField class="form-control" name="nome" value="${arrematanteInstance?.nome}"/>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: arrematanteInstance, field: 'valorDinheiro', 'error')} required">
		<label class="control-label col-md-3" for="valorDinheiro">
			<g:message code="arrematante.valorDinheiro.label" default="Valor Dinheiro:" />
			<span class="required">*</span>
		</label>
		<div class="col-md-4">
			<g:field class="form-control" name="valorDinheiro" value="${fieldValue(bean: arrematanteInstance, field: 'valorDinheiro')}" required=""/>
		</div>
	</div>
</div>

