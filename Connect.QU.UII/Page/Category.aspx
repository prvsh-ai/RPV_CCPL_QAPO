<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="Category.aspx.cs" Inherits="Connect.QU.UII.Page.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Company Details</title>
    <style type="text/css">
        /*.form-control {
            width: 159px !important;
        }

        .btn {
            margin-left: 33px;
        }

        .selectBox {
            display: inline-block;
            width: 159px;
            vertical-align: middle;
            height: 30px;
        }

        .select2 {
            width: 159px !important;
        }*/
        .selectBox {
            max-width: 187px;
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
                            <div class="form-inline">

                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtCategoryName">Category Name&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtCategoryName" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtCode">HSN Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtCode" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtDefaultSKU">Default Unit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <%--   <input id="txtDefaultSKU" class="form-control" type="text" />--%>
                                        <select id="ddlDefaultUnit" class="selectBox form-control" name="ddlGstApplicableName">
                                            <option id="SelectDefault" selected="selected" value="0">------------Select------------</option>
                                            <option id="UnitOne" value="1">pieces</option>
                                            <option id="UnitTwo" value="2">liters</option>
                                            <option id="UnitThree" value="3">kilogram</option>
                                            <option id="UnitFour" value="4">tonne</option>
                                            <option id="UnitFive" value="5">pounds</option>
                                            <%--  <option id="UnitFive" value="28"> meters</option>
                                             <option id="UnitFive" value="28"> square meters</option>
                                             <option id="UnitFive" value="28"> square feet</option>
                                            --%>
                                        </select>
                                    </div>
                                </div>

                                <%-- <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtDefaultPU">Default PU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtDefaultPU" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtIssuingUnit">Issuing Unit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtIssuingUnit" disabled class="form-control" type="text" />
                                    </div>
                                </div>--%>
                                <br />
                                <hr style="border-top: 3px solid #bbb;" title="Specification" />

                                <div class="row">
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="Brand" value="Brand" id="chkBrand" />
                                            <label class="form-check-label" for="chkBrand">
                                                Brand
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="Type" value="Type" id="chkType" />
                                            <label class="form-check-label" for="chkType">
                                                Type
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="Name" value="Name" id="chkName" />
                                            <label class="form-check-label" for="chkName">
                                                Name
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="Number" value="Number" id="chkNumber" />
                                            <label class="form-check-label" for="chkNumber">
                                                Number
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="Color" value="Color" id="chkColor" />
                                            <label class="form-check-label" for="chkColor">
                                                Color
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="Size" value="Size" id="chkSize" />
                                            <label class="form-check-label" for="chkSize">
                                                Size
                                            </label>
                                        </div>
                                    </div>
                                </div>



                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>





            <br />


            <div class="row">

                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <table id="CategoryTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable"></table>
                </div>
            </div>




            <%--     <div class="container" style="margin-top: 3%; margin-bottom: 1%; width: 100%;">
                <table id="CategoryTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable" style="table-layout: fixed"></table>
            </div>--%>
            <div id="CategoryModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Category Details Update</h4>
                        </div>
                        <div class="modal-body">
                            <div class="box box-solid">
                                <div class="box-body">

                                    <div class="form-inline">

                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtCategoryNameUpdate">Category Name&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtCategoryNameUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtCodeUpdate">HSN Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtCodeUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="ddlDefaultUnitUpdate">Default Unit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <%-- <input id="txtDefaultSKUUpdate" class="form-control" type="text" />--%>
                                                <select id="ddlDefaultUnitUpdate" class="selectBox form-control" name="ddlGstApplicableNameUpdate">
                                                    <option id="SelectDefaultUpdate" selected="selected" value="0">------------Select------------</option>
                                                    <option id="UnitOneUpdate" value="1">pieces</option>
                                                    <option id="UnitTwoUpdate" value="2">liters</option>
                                                    <option id="UnitThreeUpdate" value="3">kilogram</option>
                                                    <option id="UnitFourUpdate" value="4">tonne</option>
                                                    <option id="UnitFiveUpdate" value="5">pounds</option>
                                                    <%--  <option id="UnitFive" value="28"> meters</option>
                                             <option id="UnitFive" value="28"> square meters</option>
                                             <option id="UnitFive" value="28"> square feet</option>
                                                    --%>
                                                </select>
                                            </div>
                                        </div>
                                        <br />
                                        <%--                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtDefaultPUUpdate">Default PU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtDefaultPUUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtIssuingUnitUpdate">Issuing Unit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtIssuingUnitUpdate" disabled class="form-control" type="text" />
                                            </div>
                                        </div>
                                        <br />--%>
                                        <hr style="border-top: 3px solid #bbb;" title="Specification" />

                                        <div class="row">
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="Brand2" value="BrandUpdate" id="chkBrandUpdate" />
                                                    <label class="form-check-label" for="chkBrandUpdate">
                                                        Brand
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="Type2" value="TypeUpdate" id="chkTypeUpdate" />
                                                    <label class="form-check-label" for="chkTypeUpdate">
                                                        Type
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="Name2" value="NameUpdate" id="chkNameUpdate" />
                                                    <label class="form-check-label" for="chkNameUpdate">
                                                        Name
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="Number2" value="NumberUpdate" id="chkNumberUpdate" />
                                                    <label class="form-check-label" for="chkNumberUpdate">
                                                        Number
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="Color2" value="ColorUpdate" id="chkColorUpdate" />
                                                    <label class="form-check-label" for="chkColorUpdate">
                                                        Color
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="Size2" value="SizeUpdate" id="chkSizeUpdate" />
                                                    <label class="form-check-label" for="chkSizeUpdate">
                                                        Size
                                                    </label>
                                                </div>
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
            //checkNameEmpty("#txtCategoryName");
            //checkNameEmpty("#txtCode"); //integer
            //checkNameEmpty("#txtDefaultSKU");
            //checkNameEmpty("#txtDefaultPU");
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
              "#txtCode"
              //"#txtDefaultSKU",
              //"#txtDefaultPU"
              );
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 1;
                data.CategoryID = 0;
                data.CategoryName = $('#txtCategoryName').val();
                data.Code = $('#txtCode').val();
                data.DefaultSKU = $('#ddlDefaultUnit').val();//$('#txtDefaultSKU').val();
                // data.DefaultPU = $('#txtDefaultPU').val();
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
                "#txtCodeUpdate"
                //"#txtDefaultSKUUpdate",
                //"#txtDefaultPUUpdate"
                );
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 2;
                data.CategoryID = $('#txtCategoryIdUpdate').val();
                data.CategoryName = $('#txtCategoryNameUpdate').val();
                data.Code = $('#txtCodeUpdate').val();
                data.DefaultSKU = $('#ddlDefaultUnitUpdate').val();// $('#txtDefaultSKUUpdate').val();
                //  data.DefaultPU = $('#txtDefaultPUUpdate').val();
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
                    element = element + '<th>Default Unit</th>';
                    //element = element + '<th>Default PU</th>';
                    element = element + '<th style="width:190px">Action</th>';
                    element = element + '</tr></thead><tbody>';
                    if (len == 0) {
                        element = element + '<tr>';
                        element = element + '<td>No Data Available</td>';
                        element = element + '<td></td>';
                        //element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '</tr>';
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].CategoryName + '</td>';
                        element = element + '<td>' + getResult[i].Code + '</td>';
                        element = element + '<td>' + getResult[i].DefaultSKU + '</td>';
                        // element = element + '<td>' + getResult[i].DefaultPU + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetCategoryDetailsForUpdate(' + getResult[i].CategoryID + ',\'' + getResult[i].CategoryName + '\',\'' + getResult[i].Code + '\',' + getResult[i].DefaultSKU + ',' + getResult[i].Brand + ',' + getResult[i].Type + ',' + getResult[i].Name + ',' + getResult[i].Number + ',' + getResult[i].Color + ',' + getResult[i].Size + '); return false;" data-toggle="modal" data-target="#CategoryModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
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
        function GetCategoryDetailsForUpdate(CategoryID, CategoryName, Code, DefaultSKU, Brand, Type, Name, Number, Color, Size) {
            $('#txtCategoryIdUpdate').val(CategoryID);
            $('#txtCategoryNameUpdate').val(CategoryName);
            $('#txtCodeUpdate').val(Code);
            //$('#txtDefaultSKUUpdate').val(DefaultSKU);
            $('#ddlDefaultUnitUpdate').val(DefaultSKU);
            //$('#txtDefaultPUUpdate').val(DefaultPU);
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
                        $('#CategoryModal').modal('hide');
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

