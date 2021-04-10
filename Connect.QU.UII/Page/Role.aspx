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
                           
                        </div>
                    </div>
                </div>
            </div>
            <br />

            <%--            new role fun--%>
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="box box-solid">
                        <div class="box-body">
                            <table id="RoleTableIdNew" class="table table-striped cf">
                            </table>

                        </div>
                    </div>
                </div>

            </div>



            <%--            new role fun--%>

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

            var data = {};
            //GetRoleDetails(0, "");

            //new role fun
            GetRoleDetailsNew(0, "");
            $("span").off('click');
            //new role fun

            $("#btnSave").click(function () {
                if ($('#txtRoleName').val().trim() != '') {



                    if (
              $("#chkRegister").prop("checked") ||
              $("#chkReports").prop("checked") ||
              $("#chkRole").prop("checked") ||
              $("#chkItem").prop("checked") ||
              $("#chkCompany").prop("checked") ||
              $("#chkCategory").prop("checked") ||
              $("#chkQuotation").prop("checked") ||
              $("#chkRequisition").prop("checked") ||
              $("#chkExecution").prop("checked") ||
              $("#chkItemApproval").prop("checked")
              ) {

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

                    else
                    {
                        alert("Please select any page");
                        return false;
                    }


                }
            });
         
        });

        //new role fun

        function GetRoleDetailsNew(RoleId, RoleName) {
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
                    $("#RoleTableIdNew").empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Select</th>';
                    element = element + '<th>Name</th>';
                    element = element + '<th>Role</th>';
                    element = element + '<th>Reports</th>';
                    element = element + '<th>Register</th>';
                    element = element + '<th>item</th>';
                    element = element + '<th>Company</th>';
                    element = element + '<th>Category</th>';
                    element = element + '<th>Quotation</th>';
                    element = element + '<th>Quotation Approval</th>';
                    element = element + '<th>Item Approval</th>';
                    element = element + '<th>Requisition</th>';
                    element = element + '<th>Execution</th>';
                    element = element + '<th>Action</th>';
                    element = element + '</tr></thead><tbody>';
                    if (len == 0) {
                        element = element + '<tr>';
                        element = element + '<td>No Data Available</td>';
                        element = element + '<td></td>';
                        element = element + '</tr>';
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>'; //
                        element = element + '<td>' + '<input type="checkbox" class="action" onclick="ClickAction(event,' + getResult[i].RoleId + ',' + [i] + ');" value=' + [i] + '  name="Action"   id="chkApprove' + [i] + '" />';
                        element = element + '<td>' + getResult[i].RoleName + '</td>';
                        if (getResult[i].RolePage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Role"  id="chkRole' + [i] + '" />';
                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Role"  id="chkRole' + [i] + '" />';
                        }

                        if (getResult[i].ReportsPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Reports"   id="chkReports' + [i] + '" />';
                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Reports"   id="chkReports' + [i] + '" />';
                        }

                        if (getResult[i].RegisterPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Register" id="chkRegister' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Register" id="chkRegister' + [i] + '" />';

                        }

                        if (getResult[i].ItemPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Item"   id="chkItem' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Item"   id="chkItem' + [i] + '" />';

                        }

                        if (getResult[i].CompanyPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Company"   id="chkCompany' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Company"   id="chkCompany' + [i] + '" />';

                        }

                        if (getResult[i].CategoryPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Category"  id="chkCategory' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Category"  id="chkCategory' + [i] + '" />';

                        }

                        if (getResult[i].QuotationPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list quotation" checked disabled name="Quotation"   id="chkQuotation' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list quotation" unchecked disabled name="Quotation"   id="chkQuotation' + [i] + '" />';

                        }

                        if (getResult[i].QuotationApprovalPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="QuotationApproval"  id="chkQuotationApproval' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="QuotationApproval"  id="chkQuotationApproval' + [i] + '" />';

                        }

                        if (getResult[i].RegisterPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="ItemApproval"  id="chkItemApproval' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="ItemApproval"  id="chkItemApproval' + [i] + '" />';

                        }

                        if (getResult[i].RequisitionPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Requisition"   id="chkRequisition' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Requisition"   id="chkRequisition' + [i] + '" />';

                        }

                        if (getResult[i].ExecutionPage) {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" checked disabled name="Execution"   id="chkExecution' + [i] + '" />';

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" class="item-list" unchecked disabled name="Execution"   id="chkExecution' + [i] + '" />';

                        }
                        element = element + '<td><a href="#"><span id="editButton' + [i] + '"  class="editButton label label-warning" onclick="GetRoleDetailsForUpdateNew(' + getResult[i].RoleId + ',\'' + getResult[i].RoleName + '\',' + [i] + '); return false;"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a><a href="#"><span class="label label-danger"   onclick="RemoveRole(' + getResult[i].RoleId + ',' + [i] + '); return false;" style="margin-left: 23px;"><i class="fa fa-file-text"  aria-hidden="true"></i>Remove</span></a></td>';
                        element = element + '</tr>';
                    }
                    element = element + '</tbody>';
                    $("#RoleTableIdNew").append(element);
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }


        function ClickAction(evnt, RoleId, Id) {



            //event.preventDefault();
            $('.action').prop('checked', false);
            $(".item-list").attr('disabled', true);
            $("span").on('click');
            $("#chkApprove" + Id).prop('checked', true);
            $("#chkRole" + Id).removeAttr('disabled');
            $("#chkReports" + Id).removeAttr('disabled');
            $("#chkRegister" + Id).removeAttr('disabled');
            $("#chkItem" + Id).removeAttr('disabled');
            $("#chkCompany" + Id).removeAttr('disabled');
            $("#chkCategory" + Id).removeAttr('disabled');
            $("#chkQuotation" + Id).removeAttr('disabled');
            $("#chkQuotationApproval" + Id).removeAttr('disabled');
            $("#chkItemApproval" + Id).removeAttr('disabled');
            $("#chkRequisition" + Id).removeAttr('disabled');
            $("#chkExecution" + Id).removeAttr('disabled');

        }


        //new
        function GetRoleDetailsForUpdateNew(RoleId, RoleName, id) {

            
            if ($("#chkApprove" + id).prop("checked")) {

                if (($("#chkQuotation" + id).prop("checked")) && (


                    $("#chkRole" + id).prop("checked") ||
                    $("#chkReports" + id).prop("checked") ||
                    $("#chkRegister" + id).prop("checked") ||
                    $("#chkItem" + id).prop("checked") ||
                    $("#chkCompany" + id).prop("checked") ||
                    $("#chkCategory" + id).prop("checked") ||
                    $("#chkQuotationApproval" + id).prop("checked") ||
                    $("#chkItemApproval" + id).prop("checked") ||
                    $("#chkRequisition" + id).prop("checked") ||
                    $("#chkExecution" + id).prop("checked")
                    )) {

                    alert("Quotation page can not be associated with other pages");

                    $("#chkQuotation" + id).prop('checked', true);


                    $("#chkRole" + id).removeAttr('checked');
                    $("#chkReports" + id).removeAttr('checked');
                    $("#chkRegister" + id).removeAttr('checked');
                    $("#chkItem" + id).removeAttr('checked');
                    $("#chkCompany" + id).removeAttr('checked');
                    $("#chkCategory" + id).removeAttr('checked');
                    $("#chkQuotationApproval" + id).removeAttr('checked');
                    $("#chkItemApproval" + id).removeAttr('checked');
                    $("#chkRequisition" + id).removeAttr('checked');
                    $("#chkExecution" + id).removeAttr('checked');

                    return false;
                }


                if (
                   $("#chkRole" + id).prop("checked") ||
                   $("#chkReports" + id).prop("checked") ||
                   $("#chkRegister" + id).prop("checked") ||
                   $("#chkItem" + id).prop("checked") ||
                   $("#chkCompany" + id).prop("checked") ||
                   $("#chkCategory" + id).prop("checked") ||
                   $("#chkQuotationApproval" + id).prop("checked") ||
                   $("#chkItemApproval" + id).prop("checked") ||
                   $("#chkRequisition" + id).prop("checked") ||
                   $("#chkExecution" + id).prop("checked")
                   ) {
                    var data1 = {};
                    data1.Mode = 2;
                    data1.RoleId = RoleId;
                    data1.RoleName = RoleName;
                    data1.RegisterPage = $("#chkRegister" + id).prop("checked");
                    data1.ReportsPage = $("#chkReports" + id).prop("checked");
                    data1.RolePage = $("#chkRole" + id).prop("checked");
                    data1.ItemPage = $("#chkItem" + id).prop("checked");
                    data1.CompanyPage = $("#chkCompany" + id).prop("checked");
                    data1.CategoryPage = $("#chkCategory" + id).prop("checked");
                    data1.QuotationApprovalPage = $("#chkQuotationApproval" + id).prop("checked");
                    data1.QuotationPage = $("#chkQuotation" + id).prop("checked");
                    data1.RequisitionPage = $("#chkRequisition" + id).prop("checked");
                    data1.ExecutionPage = $("#chkExecution" + id).prop("checked");
                    data1.ItemApprovalPage = $("#chkItemApproval" + id).prop("checked");

                    InsertUpdateRoleDetails(data1);
                    //ends
                }
                else {
                    alert("Please select any page");
                    return false;
                }
            }

            else {

                return false;
            }

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
                        GetRoleDetailsNew(0, "");
                        ClearInputBoxValues();
                        $(".item-list").attr('disabled', true);
                        $(".action").attr('disabled', true);
                        $('.action').prop('checked', false);
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
            $('input[type=checkbox]').each(function () {
                $(this).prop('checked', false);
            });



        }

        function RemoveRole(RoleId,id) {


            if ($("#chkApprove" + id).prop("checked")) {

                var conf = confirm("Are you sure you want to Remove Role Details ?")
                if (!conf) {
                    return false;
                }
                $.ajax({
                    contentType: "application/json; charset=utf-8",
                    url: "Role.aspx/RemoveRoleDetails",
                    type: "POST",
                    data: "{RoleId:" + RoleId + "}",
                    dataType: "json",
                    success: function (result) {
                        var getResult = result.d;
                        if (getResult != "0") {
                            alert(getResult);
                            GetRoleDetailsNew(0, "");
                            $(".item-list").attr('disabled', true);
                            $(".action").attr('disabled', true);
                            $('.action').prop('checked', false);
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
            else {
                return false;
            }

        }
    </script>
</asp:Content>
