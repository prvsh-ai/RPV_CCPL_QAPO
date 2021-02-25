<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Item.aspx.cs" Inherits="Connect.QU.UII.Admin.Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Company Details</title>

    <style type="text/css">
        .label1 {
            display: inline-block;
            max-width: 24%;
            margin-bottom: 5px;
            margin-top: 1%;
            font-weight: 700;
            width: 9%;
            text-align: right;
            margin-right: 1%;
        }

        .ddlstyle {
            padding: 6px 17px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            /*border: 1px solid;*/
            width: 17.5%;
        }

        @media (min-width: 768px) {
            .ddlstyle {
                display: inline-block;
                width: auto;
                vertical-align: middle;
            }
        }

        .modal-title {
            text-align: center;
        }

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

        .txttimerClass {
            width: 119px;
            height: 30px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <!-- Main content -->
        <section class="content">
            <!-- START CUSTOM TABS -->
            <div class="container">

                <div class="box box-solid">

                    <div class="box-body">
                        <div class="form-inline">

                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <label class="label1" for="txtItemName">Item Name</label>
                                <input id="txtItemName" class="form-control" type="text" />


                                <label class="label1" for="ddlCategoryId">Category No</label>
                                <select id="ddlCategoryId" name="ddlCategoryName" class="selectBox form-control"></select>



                                <label class="label1" for="txtLastPrice">Last Price</label>
                                <input id="txtLastPrice" class="form-control" type="text" />
                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 1%;">

                                <label class="label1" for="ddlGstApplicable">Gst Applicable</label>
                                <select id="ddlGstApplicable" class="selectBox form-control" name="ddlGstApplicableName">
                                    <option id="GstApplicableDefault" value="1" selected="selected">Applicable</option>
                                    <option id="GstApplicable" value="0">Not Applicable</option>

                                </select>
                                <label class="label1" for="ddlGstRate">Gst Rate</label>
                                <select id="ddlGstRate" class="selectBox form-control" name="ddlGstRateName">
                                    <option id="SelectDefault" value="0" selected="selected">select</option>
                                    <option id="GstOne" value="5">5 %</option>
                                    <option id="GstTwo" value="9">9 %</option>
                                    <option id="GstThree" value="18">18 %</option>
                                    <option id="GstFour" value="28">28 %</option>
                                </select>
                                <label class="label1" for="RadItemType">Item Type</label>
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="radStock" value="option1" />
                                <label class="form-check-label" for="radStock">Stock</label>
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="radService" value="option2" />
                                <label class="form-check-label" for="radService">Service</label>
                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 1%;">

                                <label class="label1" for="txtSKU">SKU</label>
                                <input id="txtSKU" class="form-control" type="text" disabled />
                                <label class="label1" for="txtPU">PU</label>
                                <input id="txtPU" class="form-control" type="text" disabled />
                                <label class="label1" for="txtHsnCode">HSN Code</label>
                                <input id="txtHsnCode" class="form-control" type="text" />
                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 1%;">

                                <label class="label1" for="txtEffectiveFrom">Effective From</label>


                                <%--  <div class='input-group date' id='txtValidityFrom'>
                                    <input type='text' class="txttimerClass" id="txtEffectiveFrom" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>--%>

                                <div class='input-group date AppFormdatetimepicker' id='txtValidityFrom'>
                                    <input type='text' class="txttimerClass" id="txtEffectiveFrom" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>





                                <label class="label1" for="txtEffectiveTo">Effective Till</label>

                                <%--    <div class='input-group date' id='txtValidityTo'>
                                    <input type='text' class="txttimerClass" id="txtEffectiveTo" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>--%>

                                <div class='input-group date AppFormdatetimepicker' id='txtValidityTo'>
                                    <input type='text' class="txttimerClass" id="txtEffectiveTo" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>






                                <label class="label1" for="chkApprove">Approve</label>
                                <input type="checkbox" name="chkApprove" value="YES" id="chkApprove" />


                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 1%;" id="divSpecification">
                                <label class="label1">Specification    </label>
                                <div class="form-group" style="margin-top: 1%; width: 100%;">
                                    <label class="label1" for="txtBrand">Brand</label>
                                    <input class="form-control" type="text" name="Monday" id="txtBrand" />
                                    <label class="label1" for="txtType">Type</label>
                                    <input class="form-control" type="text" name="Monday" id="txtType" />
                                    <label class="label1" for="txtName">Name</label>
                                    <input type="text" name="Monday" class="form-control" id="txtName" />
                                    <label class="label1" for="txtNumber">Number</label>
                                    <input type="text" class="form-control" name="Monday" id="txtNumber" />
                                    <label class="label1" for="txtColor">Color</label>
                                    <input type="text" class="form-control" name="Monday" id="txtColor" />
                                    <label class="label1" for="txtSize">Size</label>
                                    <input type="text" class="form-control" name="Monday" id="txtSize" />
                                </div>
                            </div>


                            <div class="form-group" style="margin-top: 1%; width: 100%;">


                                <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <table id="CityTableId" class="table table-striped cf">
                </table>
            </div>
            <!-- /.row -->

            <div id="CityModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Item Details Update</h4>
                        </div>


                        <div class="modal-body" style="padding: 1px;">
                            <div class="box box-solid">
                                <div class="box-body">

                                    <div class="form-inline">

                                        <div class="form-group" style="width: 100%; margin-top: 1%;">
                                            <label class="label1" for="txtItemNameUpdate">Item Name</label>
                                            <input id="txtItemNameUpdate" class="form-control" type="text" />


                                            <label class="label1" for="ddlCategoryIdUpdate">Category No</label>
                                            <select id="ddlCategoryIdUpdate" name="ddlCategoryName" class="selectBox form-control"></select>



                                            <label class="label1" for="txtLastPriceUpdate">Last Price</label>
                                            <input id="txtLastPriceUpdate" class="form-control" type="text" />
                                        </div>

                                        <div class="form-group" style="width: 100%; margin-top: 1%;">

                                            <label class="label1" for="ddlGstApplicableUpdate">Gst Applicable</label>
                                            <select id="ddlGstApplicableUpdate" class="selectBox form-control" name="ddlGstApplicableNameUpdate">
                                                <option id="GstApplicableDefaultUpdate" value="1" selected="selected">Applicable</option>
                                                <option id="GstApplicableUpdate" value="0">Not Applicable</option>

                                            </select>
                                            <label class="label1" for="ddlGstRateUpdate">Gst Rate</label>
                                            <select id="ddlGstRateUpdate" class="selectBox form-control" name="ddlGstRateNameUpdate">
                                                <option id="SelectDefaultUpdate" value="0" selected="selected">select</option>
                                                <option id="GstOneUpdate" value="5">5 %</option>
                                                <option id="GstTwoUpdate" value="9">9 %</option>
                                                <option id="GstThreeUpdate" value="18">18 %</option>
                                                <option id="GstFourUpdate" value="28">28 %</option>
                                            </select>
                                            <label class="label1" for="RadItemType">Item Type</label>
                                            <input class="form-check-input" type="radio" name="inlineRadioOptionsUpdate" id="radStockUpdate" value="option1Update" />
                                            <label class="form-check-label" for="radStockUpdate">Stock</label>
                                            <input class="form-check-input" type="radio" name="inlineRadioOptionsUpdate" id="radServiceUpdate" value="option2Update" />
                                            <label class="form-check-label" for="radServiceUpdate">Service</label>
                                        </div>

                                        <div class="form-group" style="width: 100%; margin-top: 1%;">

                                            <label class="label1" for="txtSKUUpdate">SKU</label>
                                            <input id="txtSKUUpdate" class="form-control" type="text" disabled />
                                            <label class="label1" for="txtPUUpdate">PU</label>
                                            <input id="txtPUUpdate" class="form-control" type="text" disabled />
                                            <label class="label1" for="txtHsnCodeUpdate">HSN Code</label>
                                            <input id="txtHsnCodeUpdate" class="form-control" type="text" />
                                        </div>

                                        <div class="form-group" style="width: 100%; margin-top: 1%;">

                                            <label class="label1" for="txtEffectiveFromUpdate">Effective From</label>
                                            <div class='input-group date' id='txtValidityFromUpdate'>
                                                <input type='text' class="txttimerClass" id="txtEffectiveFromUpdate" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                            <label class="label1" for="txtEffectiveToUpdate">Effective Till</label>
                                            <div class='input-group date' id='txtValidityToUpdate'>
                                                <input type='text' class="txttimerClass" id="txtEffectiveToUpdate" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>

                                            <label class="label1" for="chkApproveUpdate">Approve</label>
                                            <input type="checkbox" name="chkApprove" value="YES" id="chkApproveUpdate" />


                                        </div>

                                        <div class="form-group" style="width: 100%; margin-top: 1%;" id="divSpecificationUpdate">
                                            <label class="label1">Specification    </label>
                                            <div class="form-group" style="margin-top: 1%; width: 100%;">
                                                <label class="label1" for="txtBrandUpdate">Brand</label>
                                                <input class="form-control" type="text" name="Monday" id="txtBrandUpdate" />
                                                <label class="label1" for="txtTypeUpdate">Type</label>
                                                <input class="form-control" type="text" name="Monday" id="txtTypeUpdate" />
                                                <label class="label1" for="txtNameUpdate">Name</label>
                                                <input type="text" name="Monday" class="form-control" id="txtNameUpdate" />
                                                <label class="label1" for="txtNumberUpdate">Number</label>
                                                <input type="text" class="form-control" name="Monday" id="txtNumberUpdate" />
                                                <label class="label1" for="txtColorUpdate">Color</label>
                                                <input type="text" class="form-control" name="Monday" id="txtColorUpdate" />
                                                <label class="label1" for="txtSizeUpdate">Size</label>
                                                <input type="text" class="form-control" name="Monday" id="txtSizeUpdate" />
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
        <!-- /.content -->

        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>

        <input id="hidHotelId" type="hidden" />

    </div>

    <script type="text/javascript">

        $(document).ready(function () {

            GetItemDetails(0, "");

            var data = {};
            $('#divSpecification').hide();

            $("#radStock").attr('checked', true);

            $('#ddlGstApplicable').change(function () {
                if ($('#ddlGstApplicable').val() == 1) {
                    // alert("0 value");
                    $("#ddlGstRate").removeAttr('disabled');
                }
                else {

                    // alert("1 value");
                    $('#ddlGstRate').val('0');
                    $("#ddlGstRate").prop('disabled', 'disabled');

                    //$('#ddlGstRate').val('0');
                }
            });

            $('#ddlGstApplicableUpdate').change(function () {
                if ($('#ddlGstApplicableUpdate').val() == 1) {
                    // alert("0 value");
                    $("#ddlGstRateUpdate").removeAttr('disabled');
                }
                else {

                    // alert("1 value");
                    $('#ddlGstRateUpdate').val('0');
                    $("#ddlGstRateUpdate").prop('disabled', 'disabled');

                    //$('#ddlGstRate').val('0');
                }
            });

            $('#ddlCategoryId').change(function () {
                if ($('#ddlCategoryId').val() == 0) {
                    // alert("0 value");
                    $('#divSpecification').hide();
                    $("#txtSKU").val("");
                    $("#txtPU").val("");
                }
                else {
                    GetSpecificationDetails($('#ddlCategoryId').val(), "");

                    $('#divSpecification').show();
                }
            });

            $('#ddlCategoryIdUpdate').change(function () {
                if ($('#ddlCategoryIdUpdate').val() == 0) {
                    // alert("0 value");
                    $('#divSpecificationUpdate').hide();
                    $("#txtSKUUpdate").val("");
                    $("#txtPUUpdate").val("");
                }
                else {
                    GetSpecificationDetailsUpdate($('#ddlCategoryIdUpdate').val(), "");

                    $('#divSpecificationUpdate').show();
                }
            });

            GetCategoryDetails(0, "");

            $(function () {
                //$('#datetimepicker1,#datetimepicker3').datetimepicker();
                $('#txtValidityFrom').datetimepicker();
                $('#txtValidityTo').datetimepicker();

                $('#txtValidityFromUpdate').datetimepicker();
                $('#txtValidityToUpdate').datetimepicker();
            });

            $("#btnSave").click(function () {

                data.Mode = 1;
                data.ItemId = 0;
                data.ItemName = $('#txtItemName').val();
                data.CategoryId = $('#ddlCategoryId').val();
                data.LastPrice = $('#txtLastPrice').val();//
                data.GstApplicable = $('#ddlGstApplicable').val();
                data.GstRate = $('#ddlGstRate').val();
                data.RadStock = $('#radStock').is(':checked');
                data.RadService = $('#radService').is(':checked');
                data.EffectiveStartDate = $('#txtEffectiveFrom').val();
                data.EffectiveEndDate = $('#txtEffectiveTo').val();
                data.SKU = $('#txtSKU').val();
                data.PU = $('#txtPU').val();
                data.HsnCode = $('#txtHsnCode').val();
                data.Brand = $('#txtBrand').val();
                data.Type = $('#txtType').val();
                data.Name = $('#txtName').val();
                data.Number = $('#txtNumber').val();
                data.Color = $('#txtColor').val();
                data.Size = $('#txtSize').val();

                SaveUpdateItemDetails(
                  data);

            });

            $("#btnUpdate").click(function () {

                data.Mode = 2;
                data.ItemId = $('#hidHotelId').val();
                data.ItemName = $('#txtItemNameUpdate').val();
                data.CategoryId = $('#ddlCategoryIdUpdate').val();
                data.LastPrice = $('#txtLastPriceUpdate').val();//
                data.GstApplicable = $('#ddlGstApplicableUpdate').val();
                data.GstRate = $('#ddlGstRateUpdate').val();
                data.RadStock = $('#radStockUpdate').is(':checked');
                data.RadService = $('#radServiceUpdate').is(':checked');
                data.EffectiveStartDate = $('#txtEffectiveFromUpdate').val();
                data.EffectiveEndDate = $('#txtEffectiveToUpdate').val();
                data.SKU = $('#txtSKUUpdate').val();
                data.PU = $('#txtPUUpdate').val();
                data.HsnCode = $('#txtHsnCodeUpdate').val();
                data.Brand = $('#txtBrandUpdate').val();
                data.Type = $('#txtTypeUpdate').val();
                data.Name = $('#txtNameUpdate').val();
                data.Number = $('#txtNumberUpdate').val();
                data.Color = $('#txtColorUpdate').val();
                data.Size = $('#txtSizeUpdate').val();

                SaveUpdateItemDetails(
                  data);

            });

            var ArrData = [];
        });

        function GetSpecificationDetails(CategoryID, CategoryName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/GetCategoryDetails",
                type: "POST",
                data: "{CategoryID:" + CategoryID + ",CategoryName:'" + CategoryName + "'}",

                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;


                    for (var i = 0; i < len; i++) {


                        $("#txtSKU").val(getResult[i].DefaultSKU);
                        $("#txtPU").val(getResult[i].DefaultPU);
                        //code

                        if (getResult[i].Brand != undefined && getResult[i].Brand) {
                            $("#txtBrand").prop('disabled', false);
                        }
                        else {
                            $("#txtBrand").val("");
                            $("#txtBrand").prop('disabled', true);
                        }

                        if (getResult[i].Type != undefined && getResult[i].Type) {
                            $("#txtType").prop('disabled', false);
                        }
                        else {
                            $("#txtType").val("");
                            $("#txtType").prop('disabled', true);
                        }

                        if (getResult[i].Number != undefined && getResult[i].Number) {
                            $("#txtNumber").prop('disabled', false);
                        }
                        else {
                            $("#txtNumber").val("");
                            $("#txtNumber").prop('disabled', true);
                        }

                        if (getResult[i].Name != undefined && getResult[i].Name) {
                            $("#txtName").prop('disabled', false);
                        }
                        else {
                            $("#txtName").val("");
                            $("#txtName").prop('disabled', true);
                        }

                        if (getResult[i].Color != undefined && getResult[i].Color) {
                            $("#txtColor").prop('disabled', false);
                        }
                        else {
                            $("#txtColor").val("");
                            $("#txtColor").prop('disabled', true);
                        }

                        if (getResult[i].Size != undefined && getResult[i].Size) {
                            $("#txtSize").prop('disabled', false);
                        }
                        else {
                            $("#txtSize").val("");
                            $("#txtSize").prop('disabled', true);
                        }

                        //ends
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }

        function GetSpecificationDetailsUpdate(CategoryID, CategoryName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/GetCategoryDetails",
                type: "POST",
                data: "{CategoryID:" + CategoryID + ",CategoryName:'" + CategoryName + "'}",

                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;


                    for (var i = 0; i < len; i++) {


                        $("#txtSKUUpdate").val(getResult[i].DefaultSKU);
                        $("#txtPUUpdate").val(getResult[i].DefaultPU);
                        //code

                        if (getResult[i].Brand != undefined && getResult[i].Brand) {
                            $("#txtBrandUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtBrandUpdate").val("");
                            $("#txtBrandUpdate").prop('disabled', true);
                        }

                        if (getResult[i].Type != undefined && getResult[i].Type) {
                            $("#txtTypeUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtTypeUpdate").val("");
                            $("#txtTypeUpdate").prop('disabled', true);
                        }

                        if (getResult[i].Number != undefined && getResult[i].Number) {
                            $("#txtNumberUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtNumberUpdate").val("");
                            $("#txtNumberUpdate").prop('disabled', true);
                        }

                        if (getResult[i].Name != undefined && getResult[i].Name) {
                            $("#txtNameUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtNameUpdate").val("");
                            $("#txtNameUpdate").prop('disabled', true);
                        }

                        if (getResult[i].Color != undefined && getResult[i].Color) {
                            $("#txtColorUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtColorUpdate").val("");
                            $("#txtColorUpdate").prop('disabled', true);
                        }

                        if (getResult[i].Size != undefined && getResult[i].Size) {
                            $("#txtSizeUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtSizeUpdate").val("");
                            $("#txtSizeUpdate").prop('disabled', true);
                        }

                        //ends



                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }

        function GetCategoryDetails(CategoryID, CategoryName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/GetCategoryDetails",
                type: "POST",
                data: "{CategoryID:" + CategoryID + ",CategoryName:'" + CategoryName + "'}",

                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCategoryId").empty();
                    $("#ddlCategoryIdUpdate").empty();

                    $("#ddlCategoryId").append('<option value="0">Select</option>');
                    $("#ddlCategoryIdUpdate").append('<option value="0">Select</option>');

                    for (var i = 0; i < len; i++) {

                        $("#ddlCategoryId").append('<option value=' + getResult[i].CategoryID + '>' + getResult[i].CategoryName + '</option>');
                        $("#ddlCategoryIdUpdate").append('<option value=' + getResult[i].CategoryID + '>' + getResult[i].CategoryName + '</option>');
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }

        function SaveUpdateItemDetails(data) {

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/SaveUpdateItemDetails",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        //GetCityDetails(0, "", 0);
                        GetItemDetails(0, "");
                        ClearInputBoxValues(data.Mode);
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

        function ClearInputBoxValues(Mode) {
            if (Mode == 1) {
                $('input[type=text]').each(function () {
                    $(this).val('');
                });

                $('select').each(function () {
                    $(this).val('0');
                });
            }
        }

        function GetItemDetails(ItemID, ItemName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/GetItemDetails",
                type: "POST",
                data: "{ItemID:" + ItemID + ",ItemName:'" + ItemName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#CityTableId').empty();

                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Item Name</th>';
                    element = element + '<th>Category</th>';
                    element = element + '<th>Gst Applicable</th>';
                    element = element + '<th>HSN</th>';
                    element = element + '<th>SKU</th>';
                    element = element + '<th>PU</th>';
                    element = element + '<th>Action</th>';
                    element = element + '</tr></thead><tbody>';

                    if (len == 0) {
                        element = element + '<tr><td colspan="3"><p class="text-center">No Company Data Available</p></td></tr>'
                    }

                    for (var i = 0; i < len; i++) {

                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].ItemName + '</td>';
                        element = element + '<td>' + getResult[i].CategoryName + '</td>';
                        element = element + '<td>' + getResult[i].GstApplicable + '</td>';
                        element = element + '<td>' + getResult[i].HsnCode + '</td>';
                        element = element + '<td>' + getResult[i].SKU + '</td>';
                        element = element + '<td>' + getResult[i].PU + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetItemDetailsForUpdate(' + getResult[i].ItemId + ',\'' + getResult[i].ItemName + '\',' + getResult[i].CategoryId + ',\'' + getResult[i].CategoryName + '\',' + getResult[i].LastPrice + ',' + getResult[i].GstApplicable + ',' + getResult[i].GstRate + ',' + getResult[i].RadStock + ',' + getResult[i].RadService + ',\'' + getResult[i].SKU + '\',\'' + getResult[i].PU + '\',\'' + getResult[i].HsnCode + '\',\'' + getResult[i].EffectiveStartDate + '\',\'' + getResult[i].EffectiveEndDate + '\',\'' + getResult[i].Brand + '\',\'' + getResult[i].Type + '\',\'' + getResult[i].Name + '\',\'' + getResult[i].Number + '\',\'' + getResult[i].Color + '\',\'' + getResult[i].Size + '\'); return false;" data-toggle="modal" data-target="#CityModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        element = element + '</tr>';
                    }
                    element = element + '</tbody>';
                    $("#CityTableId").append(element);

                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function GetItemDetailsForUpdate(ItemID, ItemName, CategoryId, CategoryName, LastPrice, GstApplicable, GstRate, RadStock, RadService, SKU, PU, HsnCode, EffectiveStartDate, EffectiveEndDate, Brand, Type, Name, Number, Color, Size) {

           // alert(ItemID)
            $('#hidHotelId').val(ItemID);
            $('#txtItemNameUpdate').val(ItemName);
            $('#ddlCategoryIdUpdate').val(CategoryId);
            $('#txtLastPriceUpdate').val(LastPrice);
            $('#ddlGstApplicableUpdate').val(GstApplicable);
            $('#ddlGstRateUpdate').val(GstRate);

            $('#radStockUpdate').attr('checked', RadStock)
            $('#radServiceUpdate').attr('checked', RadService)

            $('#txtEffectiveFromUpdate').val(GetProperDate(EffectiveStartDate));
            $('#txtEffectiveToUpdate').val(GetProperDate(EffectiveEndDate));
            $('#txtSKUUpdate').val(SKU);
            $('#txtPUUpdate').val(PU);
            $('#txtHsnCodeUpdate').val(HsnCode);
            $('#txtBrandUpdate').val(Brand);
            $('#txtTypeUpdate').val(Type);
            $('#txtNameUpdate').val(Name);
            $('#txtNumberUpdate').val(Number);
            $('#txtColorUpdate').val(Color);
            $('#txtSizeUpdate').val(Size);

        }

        function GetProperDate(DateStr) {
            if (DateStr != null && DateStr != undefined && DateStr != "") {
                var dateString = DateStr.substr(6);
                var currentTime = new Date(parseInt(dateString));
                var month = currentTime.getMonth() + 1;
                var day = currentTime.getDate();
                var year = currentTime.getFullYear();
                var date = ('0' + month).slice(-2) + "/" + day + "/" + year;
                return date;
            }
        }
    
        </script>

</asp:Content>

