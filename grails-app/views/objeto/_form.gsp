<%@ page import="org.unb.Objeto" %>



<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: objetoInstance, field: 'nome', 'error')} ">
		<label class="control-label col-md-3" for="nome">
			<g:message code="objeto.nome.label" default="Nome:" />
			
		</label>
		<div class="col-md-4">
			<g:textField class="form-control" name="nome" value="${objetoInstance?.nome}"/>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: objetoInstance, field: 'valorIncremento', 'error')} required">
		<label class="control-label col-md-3" for="valorIncremento">
			<g:message code="objeto.valorIncremento.label" default="Valor Incremento:" />
			<span class="required">*</span>
		</label>
		<div class="col-md-4">
			<g:field class="form-control" name="valorIncremento" value="${fieldValue(bean: objetoInstance, field: 'valorIncremento')}" required=""/>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: objetoInstance, field: 'valorLanceInicial', 'error')} required">
		<label class="control-label col-md-3" for="valorLanceInicial">
			<g:message code="objeto.valorLanceInicial.label" default="Valor Lance Inicial:" />
			<span class="required">*</span>
		</label>
		<div class="col-md-4">
			<g:field class="form-control" name="valorLanceInicial" value="${fieldValue(bean: objetoInstance, field: 'valorLanceInicial')}" required=""/>
		</div>
	</div>
</div>

