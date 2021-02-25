<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Register.aspx.cs" Inherits="Connect.QU.UII.Admin.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>User Register</title>
    <style type="text/css">
        .label1 {
            display: inline-block;
            max-width: 24%;
            margin-bottom: 5px;
            margin-top: 1%;
            font-weight: 700;
            width: 9%;
            text-align: right;
            margin-right: 14px;
        }

        .selectBox {
            display: inline-block;
            /*width: auto;*/
            width: 159px;
            vertical-align: middle;
            height: 30px;
        }

        .form-control {
            width: 159px !important;
        }

        .btn {
            margin-left: 33px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <!-- Main content -->
        <section class="content">
            <!-- START CUSTOM TABS -->
            <div class="container">

                <div class="box box-solid">

                    <div class="box-body">

                        <div class="form-inline">
                            <div class="form-group" style="width: 100%;">
                                <label class="label1" for="txtUserId">UserId  </label>
                                <input id="txtUserId" name="Designation" class="form-control" type="text" />
                                <label class="label1" for="txtPassword">Password  </label>
                                <input id="txtPassword" name="RoleId" class="form-control" type="text" />
                                <label class="label1" for="txtName">Name  </label>
                                <input id="txtName" name="Name" class="form-control" type="text" />
                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <label class="label1" for="txtMobileNo">MobileNo </label>
                                <input id="txtMobileNo" name="MobileNo" class="form-control" type="text" />
                                <label class="label1" for="txtDesignation">Designation </label>
                                <input id="txtDesignation" name="Designation" class="form-control" type="text" />
                                <label class="label1" for="txtEmailId">Email Id  </label>
                                <input id="txtEmailId" name="EmailId" class="form-control" type="text" />
                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <label class="label1" for="txtAddress">Address </label>
                                <input id="txtAddress" name="Address" class="form-control" type="text" />
                                <label class="label1" for="ddlRoleId">RoleId </label>
                                <select id="ddlRoleId" class="selectBox"></select>
                                <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                            </div>
                        </div>

                    </div>

                </div>

            </div>

            <div class="container">
                <table id="LoginTableId" class="table table-striped cf">
                </table>

            </div>


            <!-- /.row -->

            <div id="LoginModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Modal Header</h4>
                        </div>
                        <div class="modal-body" style="padding: 1px;">
                            <div class="box box-solid">
                                <div class="box-body">
                                    <div class="form-inline">
                                        <div class="form-group" style="width: 100%;">
                                            <label class="label1" for="txtUserIdUpdate">UserId</label>
                                            <input id="txtUserIdUpdate" class="form-control" type="text" />
                                            <label class="label1" for="txtPasswordUpdate">Password</label>
                                            <input id="txtPasswordUpdate" class="form-control" type="text" />
                                            <label class="label1" for="txtNameUpdate">Name</label>
                                            <input id="txtNameUpdate" class="form-control" type="text" />
                                        </div>

                                        <div class="form-group" style="width: 100%; margin-top: 1%;">
                                            <label class="label1" for="txtMobileNoUpdate">MobileNo</label>
                                            <input id="txtMobileNoUpdate" class="form-control" type="text" />
                                            <label class="label1" for="txtDesignationUpdate">Designation</label>
                                            <input id="txtDesignationUpdate" class="form-control" type="text" />
                                            <label class="label1" for="txtEmailIdUpdate">Email Id</label>
                                            <input id="txtEmailIdUpdate" class="form-control" type="text" />
                                        </div>

                                        <div class="form-group" style="width: 100%; margin-top: 1%;">
                                            <label class="label1" for="txtAddressUpdate">Address</label>
                                            <input id="txtAddressUpdate" class="form-control" type="text" />
                                            <label class="label1" for="ddlRoleIdUpdate">RoleId</label>
                                            <select id="ddlRoleIdUpdate" class="selectBox"></select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input id="btnUpdate" type="button" value="Update" class="btn btn-success" style="float: left;" />
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>


                    </div>
                </div>
            </div>




        </section>
        <!-- /.content -->

        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>
    </div>
    <input id="hidLoginId" type="hidden" />


    <style type="text/css">
        label.error {
            float: none;
            color: red;
            padding-left: .5em;
            vertical-align: top;
        }
    </style>
    <script type="text/javascript">

        $(document).ready(function () {

            var data = {};
            GetUserLoginDetails(0, "");
            GetRoleDetails(0, "");
            $("#btnSave").click(function () {
                if ($('#txtUserId').val().trim() != '' && $('#txtPassword').val().trim() != '' && $('#txtName').val().trim() != '' && $('#txtMobileNo').val().trim() != '' && $('#txtEmailId').val().trim() != '' && $('#txtDesignation').val().trim() != '' && $('#ddlRoleId').val().trim() != '') {


                    data.Mode = 1;
                    data.LoginId = 0;
                    data.UserId = $('#txtUserId').val();
                    data.Password = $('#txtPassword').val();
                    data.Name = $('#txtName').val();
                    data.MobileNo = $('#txtMobileNo').val();
                    data.Designation = $('#txtEmailId').val();
                    data.EmailId = $('#txtDesignation').val();
                    data.RoleId = $('#ddlRoleId').val();
                    data.Address = $('#txtAddress').val();

                    InsertUpdateUserLoginDetails(data);


                    //InsertUpdateUserLoginDetails(1, 0, $('#txtUserId').val(), $('#txtPassword').val(), $('#txtName').val(), $('#txtMobileNo').val(), $('#txtEmailId').val(), $('#txtDesignation').val(), $('#ddlRoleId').val(), $('#txtAddress').val())

                }
            });

            $("#btnUpdate").click(function () {

                if ($('#txtUserIdUpdate').val().trim() != '' && $('#txtPasswordUpdate').val().trim() != '' && $('#txtNameUpdate').val().trim() != '' && $('#txtMobileNoUpdate').val().trim() != '' && $('#txtEmailIdUpdate').val().trim() != '' && $('#txtDesignationUpdate').val().trim() != '' && $('#ddlRoleIdUpdate').val().trim() != '') {

                    data.Mode = 2;
                    data.LoginId = $('#hidLoginId').val();
                    data.UserId = $('#txtUserIdUpdate').val();
                    data.Password = $('#txtPasswordUpdate').val();
                    data.Name = $('#txtNameUpdate').val();
                    data.MobileNo = $('#txtMobileNoUpdate').val();
                    data.Designation = $('#txtEmailIdUpdate').val();
                    data.EmailId = $('#txtDesignationUpdate').val();
                    data.RoleId = $('#ddlRoleIdUpdate').val();
                    data.Address = $('#txtAddressUpdate').val();

                    InsertUpdateUserLoginDetails(data);

                    // InsertUpdateUserLoginDetails(2, $('#hidLoginId').val(), $('#txtUserIdUpdate').val(), $('#txtPasswordUpdate').val(), $('#txtNameUpdate').val(), $('#txtMobileNoUpdate').val(), $('#txtEmailIdUpdate').val(), $('#txtDesignationUpdate').val(), $('#ddlRoleIdUpdate').val(), $('#txtAddressUpdate').val())

                }
            });
        });

        // function InsertUpdateUserLoginDetails(Mode, LoginId, UserId, Password, Name, MobileNo, EmailID, Designation, RoleId, Address) {
        function InsertUpdateUserLoginDetails(data) {

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Register.aspx/SaveUpdateUserLoginDetails",
                type: "POST",
                // data: "{Mode:" + Mode + ",LoginId:'" + LoginId + "',UserId:'" + UserId + "',Password:'" + Password + "',Name:'" + Name + "',MobileNo:'" + MobileNo + "',EmailID:'" + EmailID + "',Designation:'" + Designation + "',RoleId:" + RoleId + ",Address:'" + Address + "'}",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        GetUserLoginDetails(0, "");
                    }
                    else {
                        alert("There is an Error");
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function GetUserLoginDetails(LoginId, Name) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Register.aspx/GetUserLoginDetails",
                type: "POST",
                data: "{LoginId:" + LoginId + ",Name:'" + Name + "'}",
                dataType: "json",
                success: function (result) {

                    //alert(result);
                    var getResult = result.d;
                    var len = getResult.length;

                    $("#LoginTableId").empty();

                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Login Name</th>';
                    element = element + '<th>Mobile No</th>';
                    element = element + '<th>Email Id</th>';
                    element = element + '<th>Address</th>';
                    element = element + '<th>Designation</th>';
                    element = element + '<th>RoleName</th>';
                    element = element + '<th>UserId</th>';
                    element = element + '<th>Password</th>';
                    element = element + '<th>Action</th>';
                    element = element + '</tr></thead><tbody>';

                    if (len == 0) {
                        element = element + '<tr><td colspan="3"><p class="text-center">No Login Data Available</p></td></tr>'
                    }

                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].Name + '</td>';
                        element = element + '<td>' + getResult[i].MobileNo + '</td>';
                        element = element + '<td>' + getResult[i].EmailId + '</td>';
                        element = element + '<td>' + getResult[i].Address + '</td>';
                        element = element + '<td>' + getResult[i].Designation + '</td>';
                        element = element + '<td>' + getResult[i].RoleName + '</td>';
                        element = element + '<td>' + getResult[i].UserId + '</td>';
                        element = element + '<td>' + getResult[i].Password + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetUserLoginDetailsForUpdate(' + getResult[i].LoginId + ',\'' + getResult[i].UserId + '\',\'' + getResult[i].Password + '\',\'' + getResult[i].Name + '\',\'' + getResult[i].MobileNo + '\',\'' + getResult[i].Designation + '\',\'' + getResult[i].EmailId + '\',' + getResult[i].RoleId + ',\'' + getResult[i].Address + '\'); return false;" data-toggle="modal" data-target="#LoginModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        element = element + '</tr>';

                    }
                    element = element + '</tbody>';
                    $("#LoginTableId").append(element);
                },

                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function GetUserLoginDetailsForUpdate(LoginId, UserId, Password, Name, MobileNo, Designation, EmailId, RoleId, Address) {

            $('#hidLoginId').val(LoginId);
            $('#txtUserIdUpdate').val(UserId);
            $('#txtNameUpdate').val(Name);
            $('#txtMobileNoUpdate').val(MobileNo);
            $('#txtAddressUpdate').val(Address);
            $('#txtEmailIdUpdate').val(EmailId);
            $('#txtDesignationUpdate').val(Designation);
            $('#txtPasswordUpdate').val(Password);
            $('#ddlRoleIdUpdate').val(RoleId);
        }

        function GetRoleDetails(RoleID, RoleName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Register.aspx/GetRoleDetails",
                type: "POST",
                data: "{RoleID:" + RoleID + ",RoleName:'" + RoleName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlRoleId").empty();
                    $("#ddlRoleIdUpdate").empty();

                    $("#ddlRoleId").append('<option value="0">Select</option>');
                    $("#ddlRoleIdUpdate").append('<option value="0">Select</option>');

                    for (var i = 0; i < len; i++) {

                        $("#ddlRoleId").append('<option value=' + getResult[i].RoleID + '>' + getResult[i].RoleName + '</option>');
                        $("#ddlRoleIdUpdate").append('<option value=' + getResult[i].RoleID + '>' + getResult[i].RoleName + '</option>');
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetUserLoginDetails(LoginId, Name) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Register.aspx/GetUserLoginDetails",
                type: "POST",
                data: "{LoginId:" + LoginId + ",Name:'" + Name + "'}",
                dataType: "json",
                success: function (result) {

                    //alert(result);
                    var getResult = result.d;
                    var len = getResult.length;

                    $("#LoginTableId").empty();

                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Login Name</th>';
                    element = element + '<th>Mobile No</th>';
                    element = element + '<th>Email Id</th>';
                    element = element + '<th>Address</th>';
                    element = element + '<th>Designation</th>';
                    element = element + '<th>RoleName</th>';
                    element = element + '<th>UserId</th>';
                    element = element + '<th>Password</th>';
                    element = element + '<th>Action</th>';
                    element = element + '</tr></thead><tbody>';

                    if (len == 0) {
                        element = element + '<tr><td colspan="3"><p class="text-center">No Login Data Available</p></td></tr>'
                    }

                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].Name + '</td>';
                        element = element + '<td>' + getResult[i].MobileNo + '</td>';
                        element = element + '<td>' + getResult[i].EmailId + '</td>';
                        element = element + '<td>' + getResult[i].Address + '</td>';
                        element = element + '<td>' + getResult[i].Designation + '</td>';
                        element = element + '<td>' + getResult[i].RoleName + '</td>';
                        element = element + '<td>' + getResult[i].UserId + '</td>';
                        element = element + '<td>' + getResult[i].Password + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetUserLoginDetailsForUpdate(' + getResult[i].LoginId + ',\'' + getResult[i].UserId + '\',\'' + getResult[i].Password + '\',\'' + getResult[i].Name + '\',\'' + getResult[i].MobileNo + '\',\'' + getResult[i].Designation + '\',\'' + getResult[i].EmailId + '\',' + getResult[i].RoleId + ',\'' + getResult[i].Address + '\'); return false;" data-toggle="modal" data-target="#LoginModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        element = element + '</tr>';

                    }
                    element = element + '</tbody>';
                    $("#LoginTableId").append(element);
                },

                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

    </script>

</asp:Content>
