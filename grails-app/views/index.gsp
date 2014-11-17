
<!DOCTYPE html>
<html>
	<head>
		<title>New Application</title>
		<meta name="layout" content="main_mc">
	</head>
	<body>
	    <!-- BEGIN PAGE HEADER-->
	    <div class="row">
	        <div class="col-md-12">
	            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
	            <h3 class="page-title">
	            New App <small>New App</small>
	            </h3>
	            <ul class="page-breadcrumb breadcrumb">
	                <li>
	                    <i class="fa fa-home"></i>
                        <a href="${createLink(uri: '/')}"> Página Inicial </a>
	                </li>
	            </ul>
	            <!-- END PAGE TITLE & BREADCRUMB-->
	        </div>
	    </div>
	    <!-- END PAGE HEADER-->
	    <!-- BEGIN PAGE CONTENT-->

	    <div class="row">
	    	<div class="col-md-12">
		    	<div class="portlet box green">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-list"></i>Controladores
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse">
									</a>
									<a href="javascript:;" class="remove">
								    </a>
							    </div>
							</div>
							<div class="portlet-body">
                                    <h2>Available Controllers:</h2>
                                    <ul>
                                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                                            <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                                        </g:each>
                                    </ul>
							</div>
				</div>
			</div>
	    </div>

	    <!-- END PAGE CONTENT-->
	</body>
</html>
