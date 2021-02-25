<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Connect.QU.UII.Login" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Connect Compusys Pvt Ltd | Login</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="css/AdminLTE.min.css">
    <link rel="stylesheet" href="css/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <style>
        .bg {
        background-image:url("../images/EA_Loginbg.png") !important;
        
        }
        </style>


</head>
<body class="hold-transition login-page  bg" >
    <form id="form1" runat="server">
        <div class="login-box">
            <div class="login-logo">
                <a href="javascript:void(0)"><img src="images/Connectlogo.JPG" width="150"><br>
                    <span class="login-box-title">Quotation And Purchase <i> Order System</i> </span></a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                 <p class="login-box-msg"> <asp:Label ID="lblMsg" runat="server" Visible="false" ForeColor="Red"></asp:Label></p>
                <%--<p class="login-box-msg">Sign in to start your session</p>--%>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtUserId" MaxLength="50" runat="server" class="form-control" placeholder="User Id"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="#ac2925" Display="Dynamic"
                                    ErrorMessage="*Enter User Id"
                                    ControlToValidate="txtUserId" ValidationGroup="login"></asp:RequiredFieldValidator>
             <%--   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="#ac2925" SetFocusOnError="true"
                                    ControlToValidate="txtEmail" Display="Dynamic"
                                    ErrorMessage="*Enter valid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ValidationGroup="login"></asp:RegularExpressionValidator>--%>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="txtPassword" MaxLength="50" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="#ac2925" runat="server" 
                                    Display="Dynamic" ErrorMessage="*Enter Password" ControlToValidate="txtPassword"
                                    ValidationGroup="login"></asp:RequiredFieldValidator>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <%--<div class="checkbox icheck">
                            <label>
                                <input type="checkbox">
                                Remember Me
                            </label>
                        </div>--%>
                    </div>
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Sign In" ValidationGroup="login" class="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <!-- /.col -->
                </div>
              <%--  <hr>
               
                <a href="#">I forgot my password</a><br>--%>
            </div>
        </div>
        <!-- /.login-box -->

        <script src="js/jQuery-2.1.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/icheck.min.js"></script>

        <script type = "text/javascript" >

            //$(function () {
            //    $('input').iCheck({
            //        checkboxClass: 'icheckbox_square-blue',
            //        radioClass: 'iradio_square-blue',
            //        increaseArea: '20%' // optional
            //    });
            //});



        </script>
    </form>
</body>
</html>
