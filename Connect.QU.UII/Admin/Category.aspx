<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Category.aspx.cs" Inherits="Connect.QU.UII.Admin.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Company Details</title>
    <style type="text/css">
        .form-control {
            width: 159px !important;
        }

        .btn {
            margin-left: 33px;
        }

        .selectBox {
            display: inline-block;
            /*width: auto;*/
            width: 159px;
            vertical-align: middle;
            height: 30px;
        }

        .select2 {
            width: 159px !important;
        }
    </style>
    <link href="../css/Admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <div class="content-wrapper">
        <section class="content">
            <div class="container">
                <div class="box box-solid">
                    <div class="box-body">
                        <div class="form-inline">
                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <label class="label1" for="txtCategoryName">Category Name</label>
                                <input id="txtCategoryName" class="form-control" type="text" />
                                <label class="label1" for="txtCode">Code</label>
                                <input id="txtCode" class="form-control" type="text" />
                                <label class="label1" for="txtDefaultSKU">Default SKU</label>
                                <input id="txtDefaultSKU" class="form-control" type="text" />
                            </div>
                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <label class="label1" for="txtDefaultPU">Default PU</label>
                                <input id="txtDefaultPU" class="form-control" type="text" />
                            </div>
                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <label class="label1">Specification    </label>
                                <div class="form-group" style="margin-top: 1%; width: 100%;">
                                    <label class="label1" for="chkBrand">Brand</label>
                                    <input type="checkbox" name="Brand" id="chkBrand" value="Brand" />
                                    <label class="label1" for="chkType">Type</label>
                                    <input type="checkbox" name="Type" value="Type" id="chkType" />
                                    <label class="label1" for="chkName">Name</label>
                                    <input type="checkbox" name="Name" value="Name" id="chkName" />
                                    <label class="label1" for="chkNumber">Number</label>
                                    <input type="checkbox" name="Number" value="Number" id="chkNumber" />
                                    <label class="label1" for="chkColor">Color</label>
                                    <input type="checkbox" name="Color" value="Color" id="chkColor" />
                                    <label class="label1" for="chkSize">Size</label>
                                    <input type="checkbox" name="Size" value="Size" id="chkSize" />
                                </div>
                            </div>
                            <div class="form-group" style="margin-top: 1%; width: 100%;">
                                <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container" style="margin-top: 3%; margin-bottom: 1%; width: 100%;">
                <table id="CategoryTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable" style="table-layout: fixed"></table>
            </div>
            <div id="CategoryModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Category Details Update</h4>
                        </div>
                        <div class="modal-body" style="padding: 1px;">
                            <div class="box box-solid">
                                <div class="box-body">
                                    <div class="form-inline">
                                        <div class="form-group" style="width: 100%; margin-top: 1%;">
                                            <label class="label1" for="txtCategoryNameUpdate">Category</label>
                                            <input id="txtCategoryNameUpdate" class="form-control" type="text" />
                                            <label class="label1" for="txtCodeUpdate">Code</label>
                                            <input id="txtCodeUpdate" class="form-control" type="text" />
                                            <label class="label1" for="txtDefaultSKUUpdate">Default SKU</label>
                                            <input id="txtDefaultSKUUpdate" class="form-control" type="text" />
                                        </div>
                                        <div class="form-group" style="width: 100%; margin-top: 1%;">
                                            <label class="label1" for="txtDefaultPUUpdate">Default PU</label>
                                            <input id="txtDefaultPUUpdate" class="form-control" type="text" />
                                        </div>
                                        <div class="form-group" style="width: 100%; margin-top: 1%;">
                                            <label class="label1">Specification    </label>
                                            <div class="form-group" style="margin-top: 1%; width: 100%;">
                                                <label class="label1" for="chkBrandUpdate">Brand</label>
                                                <input type="checkbox" name="Brand2" id="chkBrandUpdate" value="Brand" />
                                                <label class="label1" for="chkTypeUpdate">Type</label>
                                                <input type="checkbox" name="Type2" value="Type" id="chkTypeUpdate" />
                                                <label class="label1" for="chkNameUpdate">Name</label>
                                                <input type="checkbox" name="Name2" value="Name" id="chkNameUpdate" />
                                                <label class="label1" for="chkNumberUpdate">Number</label>
                                                <input type="checkbox" name="Number2" value="Number" id="chkNumberUpdate" />
                                                <label class="label1" for="chkColorUpdate">Color</label>
                                                <input type="checkbox" name="Color2" value="Color" id="chkColorUpdate" />
                                                <label class="label1" for="chkSizeUpdate">Size</label>
                                                <input type="checkbox" name="Size2" value="Size" id="chkSizeUpdate" />
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
        <input id="txtCategoryIdUpdate" type="hidden" />
    </div>
    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
    <link href="../css/DataTable/dataTablesbootstrap.css" rel="stylesheet" />
    <script src="../js/datatables.1.10.2.min.js"></script>
    <script src="../js/datables.1.10.16.mn.js"></script>
    <script src="../js/Admin.js"></script>
    <script src="../js/validations.js"></script>
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
            checkNameEmpty("#txtCategoryName");
            checkNameEmpty("#txtCode"); //integer
            checkNameEmpty("#txtDefaultSKU");
            checkNameEmpty("#txtDefaultPU");
            var data = {};
            GetCategoryDetails(0, "");
            $(function () {
                $('#ddlRoomCategory').select2({
                    placeholder: "Select a Category",
                    maximumInputLength: 1
                });
                $('#ddlRoomCategoryUpdate').select2({
                    placeholder: "Select a Category",
                    maximumInputLength: 1,
                    refresh: true
                });
            });
            $("#btnSave").click(function () {
                var validations = Validation_Category(
              "#txtCategoryName",
              "#txtCode",
              "#txtDefaultSKU",
              "#txtDefaultPU");
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 1;
                data.CategoryID = 0;
                data.CategoryName = $('#txtCategoryName').val();
                data.Code = $('#txtCode').val();
                data.DefaultSKU = $('#txtDefaultSKU').val();
                data.DefaultPU = $('#txtDefaultPU').val();
                data.Brand = $('#chkBrand').prop("checked");
                data.Type = $('#chkType').prop("checked");
                data.Name = $('#chkName').prop("checked");
                data.Number = $('#chkNumber').prop("checked");
                data.Color = $('#chkColor').prop("checked");
                data.Size = $('#chkSize').prop("checked");
                SaveUpdateCategoryDetails(data);
            });
            $("#btnUpdate").click(function () {
                var validations = Validation_Category(
                "#txtCategoryNameUpdate",
                "#txtCodeUpdate",
                "#txtDefaultSKUUpdate",
                "#txtDefaultPUUpdate");
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 2;
                data.CategoryID = $('#txtCategoryIdUpdate').val();
                data.CategoryName = $('#txtCategoryNameUpdate').val();
                data.Code = $('#txtCodeUpdate').val();
                data.DefaultSKU = $('#txtDefaultSKUUpdate').val();
                data.DefaultPU = $('#txtDefaultPUUpdate').val();
                data.Brand = $('#chkBrandUpdate').prop("checked");
                data.Type = $('#chkTypeUpdate').prop("checked");
                data.Name = $('#chkNameUpdate').prop("checked");
                data.Number = $('#chkNumberUpdate').prop("checked");
                data.Color = $('#chkColorUpdate').prop("checked");
                data.Size = $('#chkSizeUpdate').prop("checked");
                SaveUpdateCategoryDetails(data);
            });
            var ArrData = [];
        });
        function GetCategoryDetails(CategoryID, CategoryName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Category.aspx/GetCategoryDetails",
                type: "POST",
                data: "{CategoryID:" + CategoryID + ",CategoryName:'" + CategoryName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#CategoryTableId').empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>CategoryName</th>';
                    element = element + '<th>Code</th>';
                    element = element + '<th>Default SKU</th>';
                    element = element + '<th>Default PU</th>';
                    element = element + '<th style="width:190px">Action</th>';
                    element = element + '</tr></thead><tbody>';
                    if (len == 0) {
                        element = element + '<tr>';
                        element = element + '<td>No Data Available</td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '</tr>';
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].CategoryName + '</td>';
                        element = element + '<td>' + getResult[i].Code + '</td>';
                        element = element + '<td>' + getResult[i].DefaultSKU + '</td>';
                        element = element + '<td>' + getResult[i].DefaultPU + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetCategoryDetailsForUpdate(' + getResult[i].CategoryID + ',\'' + getResult[i].CategoryName + '\',\'' + getResult[i].Code + '\',\'' + getResult[i].DefaultSKU + '\',\'' + getResult[i].DefaultPU + '\',' + getResult[i].Brand + ',' + getResult[i].Type + ',' + getResult[i].Name + ',' + getResult[i].Number + ',' + getResult[i].Color + ',' + getResult[i].Size + '); return false;" data-toggle="modal" data-target="#CategoryModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        element = element + '</tr>';
                    }
                    element = element + '</tbody>';
                    $("#CategoryTableId").append(element);
                    $('#CategoryTableId').dataTable({
                        "paging": true,
                        //"scrollY": 400,
                        "destroy": true,
                        "pagingType": "simple_numbers"[{
                            style: 'Margin-left:1%'
                        }]
                    });
                    $('.dataTables_length').addClass('bs-select');
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }
        function GetCategoryDetailsForUpdate(CategoryID, CategoryName, Code, DefaultSKU, DefaultPU, Brand, Type, Name, Number, Color, Size) {
            $('#txtCategoryIdUpdate').val(CategoryID);
            $('#txtCategoryNameUpdate').val(CategoryName);
            $('#txtCodeUpdate').val(Code);
            $('#txtDefaultSKUUpdate').val(DefaultSKU);
            $('#txtDefaultPUUpdate').val(DefaultPU);
            $('#chkBrandUpdate').prop('checked', Brand);
            $('#chkTypeUpdate').prop('checked', Type);
            $('#chkNameUpdate').prop('checked', Name);
            $('#chkNumberUpdate').prop('checked', Number);
            $('#chkColorUpdate').prop('checked', Color);
            $('#chkSizeUpdate').prop('checked', Size);
        }
        function SaveUpdateCategoryDetails(data) {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Category.aspx/SaveUpdateCategoryDetails",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        GetCategoryDetails(0, "");
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

