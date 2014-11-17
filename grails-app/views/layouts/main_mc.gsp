<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="" name="description"/>
        <meta content="" name="author"/>
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'uniform.default.css')}" type="text/css">

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style-metronic.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style-responsive.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'plugins.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'default.css')}" type="text/css" id="style_color" >
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'select2.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'select2-metronic.css')}" type="text/css" >
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'DT_bootstrap.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-markdown.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'validation.css')}" type="text/css">

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'multi-select.css')}" type="text/css">

        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}">

        <g:layoutHead/>
        <r:layoutResources />
</head>
<body class="page-header-fixed">
    <div class="header navbar navbar-fixed-top mega-menu">
        <!-- BEGIN TOP NAVIGATION BAR -->
        <div class="header-inner">
            <!-- BEGIN LOGO -->
            <a class="navbar-brand" href="${createLink(uri: '/')}">
                <img src="${resource(dir: 'images', file: 'logo_mc_white.png')}"  alt="logo" class="img-responsive"/>
            </a>
            <!-- END LOGO -->
            <!-- BEGIN HORIZANTAL MENU -->
            <div class="hor-menu hidden-sm hidden-xs">
                <ul class="nav navbar-nav">
                    <li class="classic-menu-dropdown">
                        <a href="${createLink(uri: '/')}">
                             Página Inicial
                        </a>
                    </li>
                    <li class="mega-menu-dropdown">
                        <a href="#" data-hover="dropdown" data-close-others="true" href="" class="dropdown-toggle">
                             Menu 01 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <!-- Content container to add padding -->
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <ul class="col-md-4 mega-menu-submenu">
                                            <li>
                                                <h3>Menu 01 SubMenu 01</h3>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right"> Item 01</i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right"> Item 02</i>
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="col-md-4 mega-menu-submenu">
                                            <li>
                                                <h3>Menu 01 SubMenu 02</h3>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right">Item 01</i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right">Item 02</i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right">Item 03</i>
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="col-md-4 mega-menu-submenu">
                                            <li>
                                                <h3>Menu 01 SubMenu 03</h3>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right">Item 01</i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-angle-right">Item 02</i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="classic-menu-dropdown">
                        <a data-toggle="dropdown" data-hover="dropdown" data-close-others="true" href="">
                             Menu 02 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">
                                     Menu 02 SubMenu 01
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                     Menu 02 SubMenu 02
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                     Menu 02 SubMenu 03
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="classic-menu-dropdown">
                        <a data-toggle="dropdown" data-hover="dropdown" data-close-others="true" href="">
                             Menu 03 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">
                                    Menu 03 SubMenu 01
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Menu 03 SubMenu 02
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Menu 03 SubMenu 03
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- END HORIZANTAL MENU -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <img src="${resource(dir: 'images', file: 'menu-toggler.png')}"  alt=""/>

            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav navbar-nav pull-right">

                <li class="dropdown" id="header_task_bar">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                    <i class="fa fa-tasks"></i>
                </a>
                <ul class="dropdown-menu extended tasks">
                    <li>
                        <p>
                             Últimas notificações.
                        </p>
                    </li>
                    <li>
                        <ul class="dropdown-menu-list scroller" style="height: 250px;">
                            <div id="notification">
                            </div>   
                        </ul>
                    </li>
                    <li class="external">
                        <g:link controller="notificacao" action="list">
                             Veja todas as notificações <i class="m-icon-swapright"></i>
                        </g:link>
                    </li>
                </ul>
            </li>

                <!-- BEGIN USER LOGIN DROPDOWN -->
                <sec:ifLoggedIn>
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img src="${resource(dir: 'images', file: 'user4.png')}"  alt="" />
                            <span class="username hidden-1024">
                                 &nbsp;<sec:username/>
                            </span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:;" id="trigger_fullscreen">
                                    <i class="fa fa-arrows"></i> Tela Cheia
                                </a>
                            </li>
                            <li>
                                <g:link controller="logout">
                                    <i class="fa fa-sign-out"></i> Sair
                                </g:link>
                            </li>
                        </ul>
                    </li>
                </sec:ifLoggedIn>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <!-- END TOP NAVIGATION MENU -->
        </div>
        <!-- END TOP NAVIGATION BAR -->
    </div>
    
    <div class="clearfix">
    </div>

    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <div class="page-sidebar-wrapper">
            <div class="page-sidebar navbar-collapse collapse">
                <!--BEGIN: SIDEBAR MENU FOR DESKTOP-->
                <ul class="page-sidebar-menu hidden-sm hidden-xs" data-auto-scroll="true" data-slide-speed="200">
                    <li>
                        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                        <div class="sidebar-toggler hidden-sm hidden-xs">
                        </div>
                        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    </li>
                    <li>
                        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                        <form class="sidebar-search" action="#" method="POST">
                            <div class="form-container">
                                <div class="input-box">
                                    <a href="javascript:;" class="remove">
                                    </a>
                                    <input type="text" placeholder="Search..."/>
                                    <input type="button" class="submit" value=" "/>
                                </div>
                            </div>
                        </form>
                        <!-- END RESPONSIVE QUICK SEARCH FORM -->
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="fa fa-th-list"></i>
                            <span class="title">
                                 Menu Lateral 01
                            </span>
                            <span class="arrow">
                            </span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                     ML 1
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                     ML 2
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                     ML 3
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END FRONT DEMO -->
                    <li>
                        <a href="javascript:;">
                            <i class="fa fa-th-list"></i>
                            <span class="title">
                                 Menu Lateral 02
                            </span>
                            <span class="arrow ">
                            </span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                     ML 1
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                     ML 2
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="fa fa-th-list"></i>
                            <span class="title">
                                 Menu Lateral 03
                            </span>
                            <span class="arrow ">
                            </span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    ML 1
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                     ML 2
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-bar-chart-o"></i>
                            <span class="title">
                                 Menu Lateral 04
                            </span>
                        </a>
                    </li>
                    <li class="last">
                        <g:link controller="logout">
                            <i class="fa fa-sign-out"></i>
                            <span class="title">
                                 Sair
                            </span>
                        </g:link>
                    </li>
                </ul>
                <!--END: SIDEBAR MENU FOR DESKTOP-->
                <!--BEGIN: HORIZONTAL AND SIDEBAR MENU FOR MOBILE & TABLETS-->
                <ul class="page-sidebar-menu visible-sm visible-xs" data-auto-scroll="true" data-slide-speed="200">
                    <li>
                        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                        <form class="sidebar-search" action="#" method="POST">
                            <div class="form-container">
                                <div class="input-box">
                                    <a href="javascript:;" class="remove">
                                    </a>
                                    <input type="text" placeholder="Search..."/>
                                    <input type="button" class="submit" value=" "/>
                                </div>
                            </div>
                        </form>
                        <!-- END RESPONSIVE QUICK SEARCH FORM -->
                    </li>
                    <li>
                        <g:link controller="index">
                            Página Inicial
                            <span class="selected">
                            </span>
                            <span class="arrow open">
                            </span>
                        </g:link>
                        <ul class="sub-menu">
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-th-list"></i>
                                    <span class="title">
                                         Menu 01
                                    </span>
                                    <span class="arrow">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="#">
                                             Listar
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                             Criar
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                             Painel de Gerenciamento
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-th-list"></i>
                                    <span class="title">
                                         Menu 02
                                    </span>
                                    <span class="arrow ">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="#">
                                             Listar
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                             Criar
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-th-list"></i>
                                    <span class="title">
                                         Menu 03
                                    </span>
                                    <span class="arrow ">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="#">
                                             Listar
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                             Criar
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-bar-chart-o"></i>
                                    <span class="title">
                                         Menu 04
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!--END: HORIZONTAL AND SIDEBAR MENU FOR MOBILE & TABLETS-->
            </div>
        </div>

        <div class="page-content-wrapper">
            <div class="page-content">
                <!-- BEGIN STYLE CUSTOMIZER -->
                <div class="theme-panel hidden-xs hidden-sm">
                    <div class="toggler">
                    </div>
                    <div class="toggler-close">
                    </div>
                    <div class="theme-options">
                        <div class="theme-option theme-colors clearfix">
                            <span>
                                 Mude o Tema
                            </span>
                            <ul>
                                <li class="color-black current color-default" data-style="default">
                                </li>
                                <li class="color-blue" data-style="blue">
                                </li>
                                <li class="color-brown" data-style="brown">
                                </li>
                                <li class="color-purple" data-style="purple">
                                </li>
                                <li class="color-grey" data-style="grey">
                                </li>
                                <li class="color-white color-light" data-style="light">
                                </li>
                            </ul>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Layout
                            </span>
                            <select class="layout-option form-control input-small">
                                <option value="fluid" selected="selected">Fluid</option>
                                <option value="boxed">Boxed</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Cabeçalho
                            </span>
                            <select class="header-option form-control input-small">
                                <option value="fixed" selected="selected">Fixed</option>
                                <option value="default">Default</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Menu Lateral
                            </span>
                            <select class="sidebar-option form-control input-small">
                                <option value="fixed">Fixed</option>
                                <option value="default" selected="selected">Default</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Posição do Menu Lateral
                            </span>
                            <select class="sidebar-pos-option form-control input-small">
                                <option value="left" selected="selected">Left</option>
                                <option value="right">Right</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Rodapé
                            </span>
                            <select class="footer-option form-control input-small">
                                <option value="fixed">Fixed</option>
                                <option value="default" selected="selected">Default</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!-- END STYLE CUSTOMIZER -->
                <g:layoutBody/>
            </div>
        </div>
    </div>


    <div class="footer">
    <div class="footer-inner">
         2014 &copy; Application By MC.
    </div>
    <div class="footer-tools">
        <span class="go-top">
            <i class="fa fa-angle-up"></i>
        </span>
    </div>
    </div>

    <!--[if lt IE 9]>
    <g:javascript src="excanvas.min.js"/>
    <g:javascript src="respond.min.js"/> 
    <![endif]-->

    <g:javascript src="jquery-1.10.2.min.js"/>
    <g:javascript src="jquery-migrate-1.2.1.min.js"/> 
    <g:javascript src="bootstrap.min.js"/>
    <g:javascript src="bootstrap-hover-dropdown.min.js"/> 
    <g:javascript src="jquery.slimscroll.min.js"/>
    <g:javascript src="jquery.blockui.min.js"/> 
    <g:javascript src="jquery.cokie.min.js"/>
    <g:javascript src="jquery.uniform.min.js"/> 

    <g:javascript src="select2.min.js"/> 
    <g:javascript src="jquery.dataTables.min.js"/>
    <g:javascript src="DT_bootstrap.js"/> 
    <g:javascript src="jquery.validate.min.js"/> 
    <g:javascript src="additional-methods.min.js"/> 
    <g:javascript src="ckeditor.js"/> 
    
    <g:javascript src="app.js"/> 
    <g:javascript src="jquery.multi-select.js"/> 
    <g:javascript src="table-advanced.js" /> 
    <g:javascript src="form-validation.js"/> 
    <g:javascript src="components-dropdowns.js"/> 

    <script>
        jQuery(document).ready(function() {    
            App.init();
            FormValidation.init();
            TableAdvanced.init();
            ComponentsDropdowns.init();
        });
    </script>

    <r:layoutResources />
</body>
</html>
