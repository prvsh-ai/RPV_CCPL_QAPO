<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="Role.aspx.cs" Inherits="Connect.QU.UII.Page.Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Role Master</title>
    <style type="text/css">
        .btn {
            margin-left: 33px;
        }
    </style>
    <%-- <link href="../css/Admin.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="box box-solid">
                        <div class="box-body">
                            
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="txtRoleName">Role Name</label>
                                    <div class="col-sm-10">
                                        <input id="txtRoleName" class="form-control" type="text" />
                                    </div>
                                </div>

                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="ItemApproval" value="ItemApproval" id="chkItemApproval" />
                                        <label class="form-check-label" for="chkItemApproval">
                                            Item Approval Page
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Execution" value="Execution" id="chkExecution" />
                                        <label class="form-check-label" for="chkExecution">
                                            Execution Page
                                        </label>
                                    </div>
                                </div>


                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Requisition" value="Requisition" id="chkRequisition" />
                                        <label class="form-check-label" for="chkRequisition">
                                            Requisition Page
                                        </label>
                                    </div>

                                </div>

                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Quotation" value="Quotation" id="chkQuotation" />
                                        <label class="form-check-label" for="chkQuotation">
                                            Quotation Page
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Approval" value="Approval" id="chkApproval" />
                                        <label class="form-check-label" for="chkApproval">
                                            Quotation Approval Page
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Category" id="chkCategory" value="Category" />
                                        <label class="form-check-label" for="chkCategory">
                                            Category Page
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Company" value="Company" id="chkCompany" />
                                        <label class="form-check-label" for="chkCompany">
                                            Company Page
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Item" value="Item" id="chkItem" />
                                        <label class="form-check-label" for="chkItem">
                                            Item Page
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Role" value="Name" id="chkRole" />
                                        <label class="form-check-label" for="chkRole">
                                            Role Page                                   
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Reports" value="Reports" id="chkReports" />
                                        <label class="form-check-label" for="chkReports">
                                            Reports Page
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group form-check-inline">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="checkbox" class="form-check-input" name="Register" id="chkRegister" value="Register" />
                                        <label class="form-check-label" for="chkRegister">
                                            Register Page
                                        </label>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                                    </div>
                                </div>


                            </div>

                            <br />
                            <table id="RoleTableId" class="table table-striped cf">
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div id="RoleModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Role Details Update</h4>
                        </div>
                        <div class="modal-body" style="padding: 1px;">
                            <div class="box box-solid">
                                <div class="box-body">

                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="txtRoleNameUpdate">Role Name</label>
                                            <div class="col-sm-10">
                                                <input id="txtRoleNameUpdate" class="form-control" type="text" />
                                            </div>
                                        </div>

                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="ItemApproval" value="ItemApproval" id="chkItemApprovalUpdate" />
                                                <label class="form-check-label" for="chkItemApprovalUpdate">
                                                    Item Approval Page
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Execution" value="Execution" id="chkExecutionUpdate" />
                                                <label class="form-check-label" for="chkExecutionUpdate">
                                                    Execution Page
                                                </label>
                                            </div>
                                        </div>


                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Requisition" value="Requisition" id="chkRequisitionUpdate" />
                                                <label class="form-check-label" for="chkRequisitionUpdate">
                                                    Requisition Page
                                                </label>
                                            </div>

                                        </div>

                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Quotation" value="Quotation" id="chkQuotationUpdate" />
                                                <label class="form-check-label" for="chkQuotationUpdate">
                                                    Quotation Page
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Approval" value="Approval" id="chkApprovalUpdate" />
                                                <label class="form-check-label" for="chkApprovalUpdate">
                                                    Quotation Approval Page
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Category" id="chkCategoryUpdate" value="Category" />
                                                <label class="form-check-label" for="chkCategoryUpdate">
                                                    Category Page
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Company" value="Company" id="chkCompanyUpdate" />
                                                <label class="form-check-label" for="chkCompanyUpdate">
                                                    Company Page
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Item" value="Item" id="chkItemUpdate" />
                                                <label class="form-check-label" for="chkItemUpdate">
                                                    Item Page
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Role" value="Name" id="chkRoleUpdate" />
                                                <label class="form-check-label" for="chkRoleUpdate">
                                                    Role Page                                   
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Reports" value="Reports" id="chkReportsUpdate" />
                                                <label class="form-check-label" for="chkReportsUpdate">
                                                    Reports Page
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group form-check-inline">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="checkbox" class="form-check-input" name="Register" id="chkRegisterUpdate" value="Register" />
                                                <label class="form-check-label" for="chkRegisterUpdate">
                                                    Register Page
                                                </label>
                                            </div>
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
        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>
        <input id="hidRoleId" type="hidden" />
    </div>
    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
    <script src="../js/Admin.js"></script>
    <script type="text/javascript">
        $body = $("body");
        $(document).on({
            ajaxStart: function () { $("#overlay").fadeIn(300);; },
            ajaxStop: function () {
                setTimeout(function () {
                    $("#overlay").fadeOut(300);
                }, 200);
            },
            ajaxError: function () {
                setTimeout(function () {
                    $("#overlay").fadeOut(300);
                }, 200);
            }
        });
        $(document).ready(function () {

            $('input:checkbox').change(function () {
                if ($('#chkQuotation').prop('checked')) {
                    alert("Quotation page can not be associated with other pages");
                    $('input:checkbox').removeAttr('checked');
                    $('#chkQuotation').prop('checked', true);
                }
            });

            $('#chkQuotationUpdate').change(function () {
                if ($('#chkQuotationUpdate').prop('checked')) {
                    alert("Quotation page can not be associated with other pages");
                    $('input:checkbox').removeAttr('checked');
                    $('#chkQuotationUpdate').prop('checked', true);
                }
            });


            var data = {};
            GetRoleDetails(0, "");
            $("#btnSave").click(function () {
                if ($('#txtRoleName').val().trim() != '') {
                    data.Mode = 1;
                    data.RoleId = 0;
                    data.RoleName = $('#txtRoleName').val();
                    data.RegisterPage = $('#chkRegister').prop("checked");
                    data.ReportsPage = $('#chkReports').prop("checked");
                    data.RolePage = $('#chkRole').prop("checked");
                    data.ItemPage = $('#chkItem').prop("checked");
                    data.CompanyPage = $('#chkCompany').prop("checked");
                    data.CategoryPage = $('#chkCategory').prop("checked");
                    data.QuotationApprovalPage = $('#chkApproval').prop("checked");
                    data.QuotationPage = $('#chkQuotation').prop("checked");
                    data.RequisitionPage = $('#chkRequisition').prop("checked");
                    data.ExecutionPage = $('#chkExecution').prop("checked");
                    data.ItemApprovalPage = $('#chkItemApproval').prop("checked");

                    InsertUpdateRoleDetails(data);
                }
            });
            $("#btnUpdate").click(function () {
                if ($('#txtRoleNameUpdate').val().trim() != '') {
                    debugger;
                    data.Mode = 2;
                    data.RoleId = $('#hidRoleId').val();
                    data.RoleName = $('#txtRoleNameUpdate').val();
                    data.RegisterPage = $('#chkRegisterUpdate').prop("checked");
                    data.ReportsPage = $('#chkReportsUpdate').prop("checked");
                    data.RolePage = $('#chkRoleUpdate').prop("checked");
                    data.ItemPage = $('#chkItemUpdate').prop("checked");
                    data.CompanyPage = $('#chkCompanyUpdate').prop("checked");
                    data.CategoryPage = $('#chkCategoryUpdate').prop("checked");
                    data.QuotationApprovalPage = $('#chkApprovalUpdate').prop("checked");
                    data.QuotationPage = $('#chkQuotationUpdate').prop("checked");
                    data.RequisitionPage = $('#chkRequisitionUpdate').prop("checked");
                    data.ExecutionPage = $('#chkExecutionUpdate').prop("checked");
                    data.ItemApprovalPage = $('#chkItemApprovalUpdate').prop("checked");

                    InsertUpdateRoleDetails(data);
                }
            });
        });
        function GetRoleDetails(RoleId, RoleName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Role.aspx/GetRoleUserDetails",
                type: "POST",
                data: "{RoleId:" + RoleId + ",RoleName:'" + RoleName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#RoleTableId").empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Role Name</th>';
                    element = element + '<th>Action</th>';
                    element = element + '</tr></thead><tbody>';
                    if (len == 0) {
                        element = element + '<tr>';
                        element = element + '<td>No Data Available</td>';
                        element = element + '<td></td>';
                        element = element + '</tr>';
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].RoleName + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetRoleDetailsForUpdate(' + getResult[i].RoleId + ',\'' + getResult[i].RoleName + '\',' + getResult[i].RegisterPage + ',' + getResult[i].ReportsPage + ',' + getResult[i].RolePage + ',' + getResult[i].ItemPage + ',' + getResult[i].CompanyPage + ',' + getResult[i].CategoryPage + ',' + getResult[i].QuotationApprovalPage + ',' + getResult[i].QuotationPage + ',' + getResult[i].RequisitionPage + ',' + getResult[i].ExecutionPage + ',' + getResult[i].ItemApprovalPage + '); return false;" data-toggle="modal" data-target="#RoleModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        element = element + '</tr>';
                    }
                    element = element + '</tbody>';
                    $("#RoleTableId").append(element);
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }
        function GetRoleDetailsForUpdate(RoleId, RoleName, RegisterPage, ReportsPage, RolePage, ItemPage, CompanyPage, CategoryPage, QuotationApprovalPage, QuotationPage, RequisitionPage, ExecutionPage, ItemApprovalPage) {
            $('#hidRoleId').val(RoleId);
            $('#txtRoleNameUpdate').val(RoleName);

            $('#chkRegisterUpdate').prop('checked', RegisterPage);
            $('#chkReportsUpdate').prop('checked', ReportsPage);
            $('#chkRoleUpdate').prop('checked', RolePage);
            $('#chkItemUpdate').prop('checked', ItemPage);
            $('#chkCompanyUpdate').prop('checked', CompanyPage);
            $('#chkCategoryUpdate').prop('checked', CategoryPage);
            $('#chkApprovalUpdate').prop('checked', QuotationApprovalPage);
            $('#chkQuotationUpdate').prop('checked', QuotationPage);
            $('#chkRequisitionUpdate').prop('checked', RequisitionPage);
            $('#chkExecutionUpdate').prop('checked', ExecutionPage);
            $('#chkItemApprovalUpdate').prop('checked', ItemApprovalPage);

        }
        function InsertUpdateRoleDetails(data) {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Role.aspx/SaveUpdateRoleUserDetails",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        GetRoleDetails(0, "");
                        ClearInputBoxValues();
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
        function ClearInputBoxValues() {
            $('input[type=text]').each(function () {
                $(this).val('');
            });
            $('select').each(function () {
                $(this).val('0');
            });
        }

    </script>
</asp:Content>
