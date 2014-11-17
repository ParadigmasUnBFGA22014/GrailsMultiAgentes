<%@ page import="org.unb.Lance" %>



<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'valorLance', 'error')} required">
		<label class="control-label col-md-3" for="valorLance">
			<g:message code="lance.valorLance.label" default="Valor Lance:" />
			<span class="required">*</span>
		</label>
		<div class="col-md-4">
			<g:field class="form-control" name="valorLance" value="${fieldValue(bean: lanceInstance, field: 'valorLance')}" required=""/>
		</div>
	</div>
</div>

