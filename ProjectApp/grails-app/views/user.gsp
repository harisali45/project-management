<html>
<head>
    <meta name="layout" content="main" />
    <title>Profile</title>
</head>
<body>
<breadcrumb:list icon="account_circle" title="Profile" ></breadcrumb:list>
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>
                    User Details
                </h2>
            </div>
            <div class="body">
<g:form class="form-horizontal" url="${g.createLink(controller: 'user', action: 'save')}">
    <div class="row clearfix">
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
            <label for="name">Name</label>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
            <div class="form-group">
                <div class="form-line">
                    <input type="text" id="name"  name="name" class="form-control" placeholder="Enter Name"
                           value="${fieldValue(bean: user, field: 'name')}" required />
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
            <label for="email">Email</label>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
            <div class="form-group">
                <div class="form-line">
                    <input type="email" id="email"  name="email" class="form-control" placeholder="Enter Email"
                           value="${fieldValue(bean: user, field: 'email')}" required />
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
            <button type="submit" class="btn btn-primary m-t-15 waves-effect" ><i class="material-icons">save</i><span>Update</span></button>
        </div>
    </div>
</g:form>
    </div>
</div>
</div>
</div>

%{--<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>
                    Upload Image
                </h2>
            </div>
            <div class="body">
                <form action="/" id="frmFileUpload" class="dropzone" method="post" enctype="multipart/form-data">
                    <div class="dz-message">
                        <div class="drag-icon-cph">
                            <i class="material-icons">touch_app</i>
                        </div>
                        <h3>Drop files here or click to upload.</h3>
                    </div>
                    <div class="fallback">
                        <input name="file" type="file" multiple />
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>--}%

    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        Forgot Password
                    </h2>
                </div>
                <div class="body">
<g:form class="form-horizontal" url="${g.createLink(controller: 'user', action: 'changePassword')}">
                    <div class="row clearfix">
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                            <label for="password">Current Password</label>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="password" id="password"  name="password" class="form-control"
                                           placeholder="Enter Current Password" required />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                            <label for="newPassword">New Password</label>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="password" id="newPassword"  name="newPassword" class="form-control" placeholder="Enter New Password"
                                            required />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                            <label for="confirmPassword">Confirm Password</label>
                        </div>
                        <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="password" id="confirmPassword"  name="confirmPassword" class="form-control" placeholder="Confirm Password"
                                           required />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                            <button type="submit" class="btn btn-primary m-t-15 waves-effect" >
                                <i class="material-icons">vpn_key</i><span>Change Password</span></button>
                        </div>
                    </div>
</g:form>
                </div>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        Invite User
                    </h2>
                </div>
                <div class="body">
                    <g:form url="${g.createLink(controller: "user", action: "invite")}" >
                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                <label for="newUserName">New User Name</label>
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="text" id="newUserName"  name="newUserName" class="form-control" placeholder="New User Name"
                                                required />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                <label for="newUserEmail">New User Email</label>
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="text" id="newUserEmail"  name="newUserEmail" class="form-control" placeholder="New User Email"
                                                required />
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class="row clearfix">
                        <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                            <button type="submit" class="btn btn-primary m-t-15 waves-effect" >
                                <i class="material-icons">email</i><span>Invite User</span></button>
                        </div>
                    </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
    </body>