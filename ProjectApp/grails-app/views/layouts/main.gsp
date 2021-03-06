<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <asset:stylesheet src="googleapis.css" />

    <!-- Bootstrap Core Css -->
    <asset:stylesheet src="bootstrap.css" />

    <!-- Waves Effect Css -->
    <asset:stylesheet src="waves.css"  />

    <!-- Animation Css -->
    <asset:stylesheet src="animate.css"  />

    <asset:stylesheet src="bootstrap-select.min.js" />
    <asset:stylesheet src="style.min.css" />
    <asset:stylesheet src="theme-red.min.css"  />
    <asset:stylesheet src="font-awesome.min.css" />
    <asset:stylesheet src="custom.css" />
    <asset:stylesheet src="bootstrap-material-datetimepicker.css"></asset:stylesheet>

    <g:layoutHead/>
</head>
<body>
<!-- Page Loader -->
%{--<div class="page-loader-wrapper">
    <div class="loader">
        <div class="preloader">
            <div class="spinner-layer pl-red">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
        <p>Please wait...</p>
    </div>
</div>--}%
<!-- #END# Page Loader -->
<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- #END# Overlay For Sidebars -->
<!-- Search Bar -->
<div class="search-bar">
    <div class="search-icon">
        <i class="material-icons">search</i>
    </div>
    <input type="text" placeholder="START TYPING...">
    <div class="close-search">
        <i class="material-icons">close</i>
    </div>
</div>
<!-- #END# Search Bar -->
<!-- Top Bar -->
<nav class="navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" >PROJECT MANAGEMENT</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li >
                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"
                   aria-expanded="true">
                    <i class="material-icons">notifications</i>
                    <span class="label-count">${session.notifications?.size()}</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="header">NOTIFICATIONS</li>
                    <li class="body">
                        <ul class="menu">
                            <g:each in="${session.notifications}" var="notification" >
                                <li>
                                    <a href="${notification.link}">
                                        <div class="col-md-2">
                                        <div class="icon-circle bg-light-green ">
                                            <i class="material-icons">${notification.icon}</i>
                                        </div>
                                        </div>
                                        <div class="menu-info col-md-10">
                                            <h4>${notification?.message}</h4>
                                        </div>
                                    </a>
                                </li>
                            </g:each>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="pull-right">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"
                   role="button" aria-expanded="true">
                    <i class="material-icons">more_vert</i>
                </a>
                <ul class="dropdown-menu">
                    <li class="body">
                        <a href="${g.createLink(controller: 'user', action: 'show')}"><i class="material-icons">account_circle</i> Profile</a>
                        <a href="/logout"><i class="material-icons">power_settings_new</i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
<!-- #Top Bar -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        %{--<div class="user-info">
            <div class="image">
                <img src="images/user.png" width="48" height="48" alt="User" />
            </div>
            <div class="info-container">
                <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">John Doe</div>
                <div class="email">john.doe@example.com</div>
                <div class="btn-group user-helper-dropdown">
                    <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                    <ul class="dropdown-menu pull-right">
                        <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                        <li role="seperator" class="divider"></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                        <li role="seperator" class="divider"></li>
                        <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
                    </ul>
                </div>
            </div>
        </div>--}%
        <!-- Menu -->
        <div class="menu">
            <ul class="list">
                <li class="header">Menu</li>
                <li class="active">
                    <a href="${g.createLink(controller: "project", action: "list")}">
                        <i class="material-icons">home</i>
                        <span>Projects</span>
                    </a>
                </li>
                <li>
                    <a href="${g.createLink(controller: "task", action: "list")}">
                        <i class="material-icons">text_fields</i>
                        <span>Tasks</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- #Menu -->
    </aside>
    <!-- #END# Left Sidebar -->
</section>

<section class="content">
    <div class="container-fluid">
        <g:layoutBody/>
    </div>
</section>

    <asset:javascript src="jquery.min.js" />
    <asset:javascript src="bootstrap.js" />
    <asset:javascript src="bootstrap-select.min.js" />
    <asset:javascript src="jquery.slimscroll.js" />
    <asset:javascript src="waves.min.js" />
    <asset:javascript src="jquery.countTo.js" />
    <asset:javascript src="admin.js" />
    <asset:javascript src="index.js" />
    <asset:javascript src="demo.js" />
    <asset:javascript src="bootstrap-notify.min.js" />
    <asset:javascript src="moment.js" />
    <asset:javascript src="bootstrap-material-datetimepicker.js"></asset:javascript>
    <asset:javascript src="application.js" />

<g:if test="flash.message" >
    <g:if test="${flash.error}">
        <script type="text/javascript">
            showNotification('alert-danger', "${flash.message}", 'top', 'right');
        </script>
    </g:if>
    <g:if test="${(!flash.error)}">
        <script type="text/javascript">
            showNotification('alert-success', "${flash.message}", 'top', 'right');
        </script>
    </g:if>
</g:if>
<script type="text/javascript">
    $('.datepicker').bootstrapMaterialDatePicker({
        format: 'DD/MM/YYYY',
        clearButton: true,
        weekStart: 1,
        time: false
    });
    /*document.onready = function () {
        document.querySelectorAll("input[required]").forEach(function (e) {
            //e.required = true;
            e.setCustomValidity('');
        });
    };*/
</script>
</body>
</html>
