
<%@ page import="org.unb.Objeto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main_mc">
		<g:set var="entityName" value="${message(code: 'objeto.label', default: 'Objeto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<!-- BEGIN PAGE HEADER-->
	    <div class="row">
	        <div class="col-md-12">
	            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
	            <h3 class="page-title">Objeto</h3>
	            <ul class="page-breadcrumb breadcrumb">
	            	<li class="btn-group">
						<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
						<span>
							Ações
						</span>
						<i class="fa fa-angle-down"></i>
						</button>
						<ul class="dropdown-menu pull-right" role="menu">
							<li>
								<a href="${createLink(uri: '/')}">
									Página Inicial
								</a>
							</li>
							<li>
								<g:link action="list">
									Lista de Objetos
								</g:link>
							</li>
						</ul>
					</li>
	                <li>
	                    <i class="fa fa-home"></i>
	                    <g:link controller="index">Página Inicial</g:link>
	                    <i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                	<g:link action="list">
							Objeto
						</g:link>
						<i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                    <g:link  action="list">
							Listar
						</g:link>
	                </li>
	            </ul>
	            <!-- END PAGE TITLE & BREADCRUMB-->
	        </div>
	    </div>

	    <div class="row">
	    	<div class="col-md-12">
				<g:if test="${flash.message}">
					<div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					    ${flash.message}
					</div>
				</g:if>
			</div>
		</div>

	    <div class="row">
	    	<div class="col-md-12">
		    	<div class="portlet box green">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-list"></i><g:message code="default.list.label" args="[entityName]" />
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									
										<th><g:message code="objeto.nome.label" default="Nome" /></th>
									
										<th><g:message code="objeto.valorIncremento.label" default="Valor Incremento" /></th>
									
										<th><g:message code="objeto.valorLanceInicial.label" default="Valor Lance Inicial" /></th>
									
								</tr>
							</thead>
							<tbody>
								<g:each in="${objetoInstanceList}" status="i" var="objetoInstance">
									
										<td><g:link action="show" id="${objetoInstance.id}">${fieldValue(bean: objetoInstance, field: "nome")}</g:link></td>
									
										<td>${fieldValue(bean: objetoInstance, field: "valorIncremento")}</td>
									
										<td>${fieldValue(bean: objetoInstance, field: "valorLanceInicial")}</td>
									
									</tr>
								</g:each>
							</tbody>
						</table>
						<div class="form-actions right">
							<g:link class="btn green" action="create">
						    <i class="fa fa-plus-square-o"></i> Criar Objeto </g:link>
						</div>
					</div>
				</div>
			</div>
	    </div>
	</body>
</html>
