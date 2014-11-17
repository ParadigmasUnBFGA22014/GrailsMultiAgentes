<%@ page import="org.unb.Arrematante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main_mc">
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<!-- BEGIN PAGE HEADER-->
	    <div class="row">
	        <div class="col-md-12">
	            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
	            <h3 class="page-title">Arrematante</h3>
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
									Lista de Arrematantes
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
							Arrematante
						</g:link>
						<i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                    <g:link  action="edit">
							Editar
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
				<g:hasErrors bean="${arrematanteInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${arrematanteInstance}" var="error">
						<div class="alert alert-danger alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<g:if test="${error in org.springframework.validation.FieldError}">
								data-field-id="${error.field}"
							</g:if>>
							<g:message error="${error}"/>
						</div>
					</g:eachError>
				</ul>
				</g:hasErrors>
			</div>
		</div>

		<div class="row">
				<div class="col-md-12">
					<div class="portlet box green">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-reorder"></i>Editar Arrematante
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse">
								</a>
								<a href="javascript:;" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							<form  name="form_sample_3" class="form-horizontal" method="POST">
								<div class="form-body">
									<h3 class="form-section"><small>Edite uma Arrematante!</small></h3>
									<div class="alert alert-danger display-hide">
										<button class="close" data-close="alert"></button>
										O formulário contêm erros. Por favor verifique abaixo.
									</div>
									<g:render template="form"/>
								</div>
								<div class="form-actions right">
									<g:hiddenField name="id" value="${arrematanteInstance?.id}" />
									<g:hiddenField name="version" value="${arrematanteInstance?.version}" />

									<div class="col-md-offset-3 col-md-9">
										<g:actionSubmit class="btn green" action="update" value="Atualizar" />

										<g:actionSubmit class="btn red" action="delete" value="Deletar" formnovalidate="" onclick="return confirm('Você tem certeza?');" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
		</div>
	</body>
</html>
