
<%@ page import="org.unb.Arrematante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main_mc">
		<g:set var="entityName" value="${message(code: 'arrematante.label', default: 'Arrematante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
	                    <g:link  action="show">
							Detalhes
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
							<i class="fa fa-reorder"></i>Detalhar Arrematante
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse">
							</a>
							<a href="javascript:;" class="remove">
							</a>
						</div>
					</div>
					<div class="portlet-body form">
						<!-- BEGIN FORM-->
						<g:form class="form-horizontal" role="form">
							<div class="form-body">
								<h3 class="form-section">Dados</h3>
								<div class="row">
									
									<g:if test="${arrematanteInstance?.nome}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Nome</label>
												
											<div class="col-md-9">
												<p class="form-control-static">
													<g:fieldValue bean="${arrematanteInstance}" field="nome"/>
												</p>
											</div>
											
											</div>
										</div>
									</g:if>
									
									<g:if test="${arrematanteInstance?.valorDinheiro}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3">Valor Dinheiro</label>
												
											<div class="col-md-9">
												<p class="form-control-static">
													<g:fieldValue bean="${arrematanteInstance}" field="valorDinheiro"/>
												</p>
											</div>
											
											</div>
										</div>
									</g:if>
									
									</div>
								</div>
							<div class="form-actions right">
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-offset-3 col-md-9">
											<g:hiddenField name="id" value="${arrematanteInstance?.id}" />

											<g:link class="btn green" action="edit" id="${arrematanteInstance?.id}">
											<i class="fa fa-pencil"></i> Editar	</g:link>

											<g:actionSubmit class="btn red" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Você tem certeza?')}');"> <i class="fa fa-times"></i> 
											</g:actionSubmit>
										</div>
									</div>
								</div>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
