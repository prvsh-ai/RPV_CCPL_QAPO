<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="Execution.aspx.cs" Inherits="Connect.QU.UII.Page.Execution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Execution Details</title>
    <link href="../css/Admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <div class="content-wrapper">
        <section class="content">

            <%--            new--%>

            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="box box-solid">
                        <div class="box-body">
                            <div class="form-inline">

                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlQuotationId">Document Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlQuotationId" name="ddlQuotationName" class="selectBox form-control"></select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtDivision">Division&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtDivision" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtCreationDate">Creation Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <div class='input-group date AppFormdatetimepicker' id='datetimepicker1'>
                                            <input type='text' class="form-control" id="txtCreationDate" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <br />

                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtVersionNumber">Version Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtVersionNumber" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtSupplierName">Supplier Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtSupplierName" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtModificationDate">Modification Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <div class='input-group date AppFormdatetimepicker' id='datetimepicker2'>
                                            <input type='text' class="form-control" id="txtModificationDate" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>

                                    </div>


                                </div>


                                <br />
                                <hr style="border-top: 3px solid #bbb;" title="Specification" />



                                <div class="row APPTest">
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div style="overflow-x: auto">
                                            <table id="tblCustomers" class="table" cellpadding="1" cellspacing="1">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 112px">Item Description</th>
                                                        <th style="width: 90px">Quantity</th>
                                                        <th style="width: 90px">Unit</th>
                                                        <th style="width: 100px">Unit Price</th>
                                                        <th style="width: 90px">Value</th>
                                                        <th style="width: 133px">Total Billed Quantity</th>
                                                        <th style="width: 114px">Total Billed Value</th>
                                                        <th style="width: 120px">Balance Quantity</th>
                                                        <th style="width: 100px">Balance Value</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                                <tfoot>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>


                                <br />


                                <div class="row">
                                    <div class="form-group col-lg-11 col-sm-11 col-xs-11 col-md-11">

                                        <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                                        <input id="btnUpdate" type="button" value="Update" class="btn btn-success" />
                                    </div>
                                    <div class="form-group col-lg-1 col-sm-1 col-xs-1 col-md-1">
                                        <input type="button" id="btnAdd" value="Add" class="btn btn-warning" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>



            </div>




            <%--            New--%>




            <div class="container" style="margin-top: 2%">
                <table id="CityTableId" class="table table-striped cf">
                </table>
            </div>
        </section>
        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>
        <input id="hidHotelId" type="hidden" />
        <div class="modal"></div>
    </div>
    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
    <script src="../js/moment.2.13.0.min.js"></script>
    <script src="../js/bootstrap-datetimepicker.4.17.37.min.js"></script>
    <script src="../js/botstrap-datepiker.1.6.4.min.js"></script>
    <link href="../css/bootstrap-datepicker.1.6.4.min.css" rel="stylesheet" />
    <script src="../js/bootstrap.3.3.7.min.js"></script>
    <link href="../css/boostrap.3.3.7.min.css" rel="stylesheet" />
    <link href="../css/DataTable/dataTablesbootstrap.css" rel="stylesheet" />
    <script src="../js/datatables.1.10.2.min.js"></script>
    <script src="../js/datables.1.10.16.mn.js"></script>
    <script src="../js/validations.js"></script>
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
            $('.integer').keyup(function (e) {
                if (/\D/g.test(this.value)) {
                    this.value = this.value.replace(/\D/g, '');
                }
            });
            checkNameEmpty("#txtDivision"); //integer
            checkNameEmpty("#txtVersionNumber");
            checkNameEmpty("#txtSupplierName");
            $("#btnUpdate").hide();
            $("#btnSave").show();
            $("#btnAdd").hide();
            GetExecutionDetails(0);
            GetQuotationDetails(0);
            $(function () {
                $('#datetimepicker1').datetimepicker({ defaultDate: new Date() });
                $('#datetimepicker2').datetimepicker({ defaultDate: new Date() });
            });
            var data = {};
            $('#ddlQuotationId').change(function () {
                GetTOCDetails($('#ddlQuotationId').val());
                $("#btnAdd").show();
            });
            $("#btnSave").click(function () {
                var validations = Validation_Execution(
              "#ddlQuotationId",
              "#txtDivision",
              "#txtCreationDate",
              "#txtVersionNumber",
              "#txtSupplierName",
              "#txtModificationDate");
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 1;
                data.ExecutionID = 0;
                data.QuotationId = parseInt($('#ddlQuotationId').val());
                data.DocumentNumber = $("#ddlQuotationId option:selected").text();
                data.Division = $('#txtDivision').val();
                data.VersionNember = $('#txtVersionNumber').val();
                data.SupplierName = $('#txtSupplierName').val();
                data.CreatedDate = $('#txtCreationDate').val();
                data.UpdatedDate = $('#txtModificationDate').val();
                SaveUpdateRequisitionDetails(data);
                GetExecutionDetails(0);
            });
            $("#btnUpdate").click(function () {
                var validations = Validation_Execution(
                "#ddlQuotationId",
                "#txtDivision",
                "#txtCreationDate",
                "#txtVersionNumber",
                "#txtSupplierName",
                "#txtModificationDate");
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 2;
                data.ExecutionID = $('#hidHotelId').val();
                data.QuotationId = parseInt($('#ddlQuotationId').val());
                data.DocumentNumber = $("#ddlQuotationId option:selected").text();
                data.Division = $('#txtDivision').val();
                data.VersionNember = $('#txtVersionNumber').val();
                data.SupplierName = $('#txtSupplierName').val();
                data.CreatedDate = $('#txtCreationDate').val();
                data.UpdatedDate = $('#txtModificationDate').val();
                SaveUpdateRequisitionDetails(data);
                GetExecutionDetails(0);
            });
            var count = 0;
            $("body").on("click", "#btnAdd", function () {
                count = count + 1;
                var tHead = $("#tblCustomers > THEAD > TR")[0];
                var rowHead = tHead;
                var cellBody = $(rowHead.insertCell(-1));
                cellBody.html('<label class="lblqty" style="width:10%;"><b>Billed Quantity</b></label>');
                cellBody = $(rowHead.insertCell(-1));
                cellBody.html('<label class="lblqty" style="width:10%;"><b>Billed Value</b></label>');
                for (i = 0; i < $('#tblCustomers > TFOOT > TR').length; i++) {
                    var tBody = $("#tblCustomers > TFOOT > TR")[i];
                    var row = tBody;
                    var cell = $(row.insertCell(-1));
                    var ct = $("<input />");
                    ct.attr("type", "text");
                    ct.attr("data-ID", i);
                    ct.attr("data-UqId", i + '-' + count);
                    ct.attr("class", "integer BillQuantity" + i);
                    ct.attr("style", "width:100%");
                    ct.attr("id", "txtBillQty" + i + '-' + count);
                    ct.attr("onchange", "Calculate(this);");
                    ct.val("0");
                    cell.append(ct);
                    var cell = $(row.insertCell(-1));
                    cell.html('<input type="text" value="0" style="width:100%;" id="txtBillValue' + i + '-' + count + '" disabled   data-UqId=' + i + '-' + count + ' data-ID=' + i + ' class="BillValue' + i + '"/>');
                }
            });
            function DeleteRowCell() {
                for (i = 0; i < $('#tblCustomers > THEAD > TR').length; i++) {
                    $('.lblqty').deleteCell(i);
                }
            }
        });
        function GetQuotationDetails(QID) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/GetQuotationDetails",
                type: "POST",
                data: "{QID:" + QID + "}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlQuotationId").append('<option value="0">Select</option>');
                    for (var i = 0; i < len; i++) {
                        if (getResult[i].Approved && getResult[i].IsRequisition) {
                            $("#ddlQuotationId").append('<option value=' + getResult[i].QID + '>' + getResult[i].QNo + '</option>');
                        }
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }
        function GetExecutionDetails(ExecutionId) {
            var element = "";
            var Counter = 1;
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Execution.aspx/GetExecutionDetails",
                type: "POST",
                data: "{ExecutionId:" + ExecutionId + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#CityTableId').empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Document Number</th>';
                    element = element + '<th>Division</th>';
                    element = element + '<th>Version Nember</th>';
                    element = element + '<th>Supplier Name</th>';
                    element = element + '<th>Creation Date</th>';
                    element = element + '<th>Action</th>';
                    element = element + '</tr></thead><tbody>';
                    if (len == 0) {
                        element = element + '<tr>';
                        element = element + '<td>No Data Available</td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '</tr>';
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].DocumentNumber + '</td>';
                        element = element + '<td>' + getResult[i].Division + '</td>';
                        element = element + '<td>' + getResult[i].VersionNember + '</td>';
                        element = element + '<td>' + getResult[i].SupplierName + '</td>';
                        element = element + '<td>' + GetProperDate(getResult[i].CreatedDate) + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetExecutionDetailsForUpdate(' + getResult[i].ExecutionID + ',' + getResult[i].QuotationId + ',\'' + GetProperDate(getResult[i].CreatedDate) + '\',\'' + getResult[i].DocumentNumber + '\',\'' + getResult[i].Division + '\',\'' + getResult[i].VersionNember + '\',\'' + getResult[i].SupplierName + '\'); return false;" ><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        element = element + '</tr>';
                    }
                    element = element + '</tbody>';
                    $("#CityTableId").append(element);
                    $('#CityTableId').dataTable({
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
        function ClearInputBoxValues() {
            $("#tblCustomers").load("Execution.aspx #tblCustomers");
            $('input[type=text]').each(function () {
                $(this).val('');
            });
            $('select').each(function () {
                $(this).val('0');
            });
        }
        function GetTOCDetails(Qid) {
            var element = "";
            $("#tblCustomers > TFOOT ").empty();
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Execution.aspx/GetTOCRequisitionDetails",
                type: "POST",
                data: "{Qid:" + Qid + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        var a = getResult[i].DescriptionOfGoods;
                        var b = getResult[i].PurchaseQty;
                        var c = getResult[i].Rate;
                        var d = getResult[i].Amount;
                        var e = getResult[i].Quantity;
                        var f = getResult[i].ItemId;
                        btnAddCall(a, b, c, d, e, f, i);
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetTOCExecutionDetails(ExecutionId) {
            var element = "";
            $("#tblCustomers > TFOOT ").empty();
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Execution.aspx/GetTOCExecutionDetails",
                type: "POST",
                data: "{ExecutionId:" + ExecutionId + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        var a = getResult[i].ItemDescription;
                        var b = getResult[i].Unit;
                        var c = getResult[i].UnitPrice;
                        var d = getResult[i].Value;
                        var e = getResult[i].TotalBilledQuantity;
                        var f = getResult[i].TotalBilledValue;
                        var g = getResult[i].BalanceQuantity;
                        var h = getResult[i].BalanceValue;
                        var j = getResult[i].BilledQuantity;
                        var k = getResult[i].BilledValue;
                        var l = getResult[i].Quantity;
                        var m = getResult[i].ItemId;
                        btnAddCallExecution(a, b, c, d, e, f, g, h, j, k, l, m, i);
                    }
                    if (getResult[0].BilledQuantity.length > 1) {
                        var trainindIdArray2 = getResult[0].BilledQuantity.split(',');
                        for (var i = 0; i < trainindIdArray2.length; i++) {
                            coladd();
                        }
                    }
                    else {
                        coladd();
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function coladd() {    //head
            var tHead = $("#tblCustomers > THEAD > TR")[0];
            var rowHead = tHead;
            var cellBody = $(rowHead.insertCell(-1));
            cellBody.html('<label class="lblqty"><b>Billed Quantity</b></label>');
            cellBody = $(rowHead.insertCell(-1));
            cellBody.html('<label class="lblqty"><b>Billed Value</b></label>');
        }
        function btnAddCallExecution(ItemDescription, Unit, UnitPrice, Value, TotalBilledQuantity, TotalBilledValue, BalanceQuantity, BalanceValue, BilledQuantity, BilledValue, Quantity, ItemId, counter) {
            var txtItemDescription = ItemDescription;
            var txtUnit = Unit;
            var txtUnitPrice = UnitPrice;
            var txtValue = Value;
            var txtTotalBilledQuantity = TotalBilledQuantity;
            var txtTotalBilledValue = TotalBilledValue;
            var txtBalanceQuantity = BalanceQuantity;
            var txtBalanceValue = BalanceValue;
            var txtQuantity = Quantity;
            var tBody = $("#tblCustomers > TFOOT")[0];
            var row = tBody.insertRow(-1);
            var cell = $(row.insertCell(-1));
            cell.html(txtItemDescription);
            cell.attr('dataID', counter);
            cell.attr('data-itemid', ItemId);
            cell = $(row.insertCell(-1));
            cell.html(txtQuantity);
            cell.attr('id', 'tdPurchasedQty' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtUnit);
            cell = $(row.insertCell(-1));
            cell.html(txtUnitPrice);
            cell.attr('id', 'tdRate' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtValue);
            cell.attr('id', 'tdValue' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtTotalBilledQuantity);
            cell.attr('id', 'tdTotalBilledQty' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtTotalBilledValue);
            cell.attr('id', 'tdTotalBilledVal' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtBalanceQuantity);
            cell.attr('id', 'tdBalanceQty' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtBalanceValue);
            cell.attr('id', 'tdBalanceVal' + counter);
            if (BilledQuantity.length > 1) {
                var trainindIdArray = BilledQuantity.split(',');
                $.each(trainindIdArray, function (index, value) {
                    cell = $(row.insertCell(-1));
                    cell.html(value);
                    cell.attr("class", "integer BillQuantity" + counter);
                    cell = $(row.insertCell(-1));
                    cell.html(txtUnitPrice * value);
                    cell.attr("class", "BillValue" + counter);
                });
            }
            else {
                cell = $(row.insertCell(-1));
                cell.html(BilledQuantity);
                cell.attr("class", "BillQuantity" + counter);
                cell = $(row.insertCell(-1));
                cell.html(txtUnitPrice * BilledQuantity);
                cell.attr("class", "BillValue" + counter);
            }
        }
        function btnAddCall(DescriptionOfGoods, PurchaseQty, Rate, Amount, Unit, ItemId, counter) {
            var txtDescriptionOfGoods = DescriptionOfGoods;
            var txtPurchasedQty = PurchaseQty;
            var txtRate = Rate;
            var txtAmount = Amount;
            var txtUnit = Unit;
            var tBody = $("#tblCustomers > TFOOT")[0];
            var row = tBody.insertRow(-1);
            var cell = $(row.insertCell(-1));
            cell.html(DescriptionOfGoods);
            cell.attr('dataID', counter);
            cell.attr('data-itemid', ItemId);
            cell = $(row.insertCell(-1));
            cell.html(txtPurchasedQty);
            cell.attr('id', 'tdPurchasedQty' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtUnit);
            cell = $(row.insertCell(-1));
            cell.html(txtRate);
            cell.attr('id', 'tdRate' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtAmount);
            cell.attr('id', 'tdValue' + counter);
            cell = $(row.insertCell(-1));
            cell.html(0);
            cell.attr('id', 'tdTotalBilledQty' + counter);
            cell = $(row.insertCell(-1));
            cell.html(0);
            cell.attr('id', 'tdTotalBilledVal' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtPurchasedQty);
            cell.attr('id', 'tdBalanceQty' + counter);
            cell = $(row.insertCell(-1));
            cell.html(txtPurchasedQty * txtRate);
            cell.attr('id', 'tdBalanceVal' + counter);
        }
        function SaveUpdateRequisitionDetails(data) {
            var tocArr = new Array();
            $("#tblCustomers TFOOT TR").each(function () {
                var row = $(this);
                var TOCExecution = {};
                var len = row.find("TD").eq(0).attr('dataID');
                if ((row.find("TD").eq(0).html()) != "") {
                    TOCExecution.ItemDescription = row.find("TD").eq(0).html();
                    TOCExecution.ItemId = row.find("TD").eq(0).attr('data-itemid');
                    TOCExecution.Quantity = row.find("TD").eq(1).html();
                    TOCExecution.Unit = row.find("TD").eq(2).html();
                    TOCExecution.UnitPrice = row.find("TD").eq(3).html();
                    TOCExecution.Value = row.find("TD").eq(4).html();
                    TOCExecution.TotalBilledQuantity = row.find("TD").eq(5).html();
                    TOCExecution.TotalBilledValue = row.find("TD").eq(6).html();
                    TOCExecution.BalanceQuantity = row.find("TD").eq(7).html();
                    TOCExecution.BalanceValue = row.find("TD").eq(8).html();
                    TOCExecution.BilledQuantity = "";
                    for (var o = 0; o < $('.BillQuantity' + len).length; o++) {
                        if ($('.BillQuantity' + len)[o].innerHTML != "") {
                            TOCExecution.BilledQuantity = TOCExecution.BilledQuantity + "," + $('.BillQuantity' + len)[o].innerHTML;
                        }
                        else {
                            TOCExecution.BilledQuantity = TOCExecution.BilledQuantity + "," + $('.BillQuantity' + len)[o].value;
                        }
                    }
                    TOCExecution.BilledValue = "";
                    for (var o = 0; o < $('.BillValue' + len).length; o++) {
                        if ($('.BillValue' + len)[o].innerHTML != "") {
                            TOCExecution.BilledValue = TOCExecution.BilledValue + "," + $('.BillValue' + len)[o].innerHTML;
                        }
                        else {
                            TOCExecution.BilledValue = TOCExecution.BilledValue + "," + $('.BillValue' + len)[o].value;
                        }
                    }
                }
                tocArr.push(TOCExecution);
            });
            data.ExecutionItem = tocArr;
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Execution.aspx/SaveUpdateExecutionDetails",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
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
        //function GetProperDate(DateStr) {
        //    if (DateStr != null && DateStr != undefined && DateStr != "") {
        //        var dateString = DateStr.substr(6);
        //        var currentTime = new Date(parseInt(dateString));
        //        var month = currentTime.getMonth() + 1;
        //        var day = currentTime.getDate();
        //        var year = currentTime.getFullYear();
        //        var date = ('0' + month).slice(-2) + "/" + day + "/" + year;
        //        return date;
        //    }
        //}
        function GetExecutionDetailsForUpdate(ExecutionId, QuotationId, CreationDate, Documentno, Division, VersionNo, SupplierName) {
            $("#tblCustomers").load("Execution.aspx #tblCustomers");
            $('#hidHotelId').val(ExecutionId);
            $("#btnAdd").show();
            GetTOCExecutionDetails(ExecutionId);
            $('#ddlQuotationId').val(QuotationId);
            $('#txtDivision').val(Division);
            $('#txtCreationDate').val(CreationDate);
            $('#txtVersionNumber').val(VersionNo);
            $('#txtSupplierName').val(SupplierName);
            $('#txtModificationDate').val(CreationDate);
            $('#ddlQuotationId').prop('disabled', true);
            $("#btnUpdate").show();
            $("#btnSave").hide();
        }
        function Calculate(x) {
            var id = $(x).attr('data-id');
            var value = $(x).prop('value');
            var UqId = $(x).attr('data-UqId');
            var BilledQuantity = parseInt($('#txtBillQty' + UqId).val());
            var BilledValue = parseInt($('#txtBillValue' + UqId).val());
            var TotalBilledQuantity = parseInt($('#tdTotalBilledQty' + id).text());
            var TotalBilledValue = parseInt($('#tdTotalBilledVal' + id).text());
            var BalanceQuantity = parseInt($('#tdBalanceQty' + id).text());
            var BalanceValue = parseInt($('#tdBalanceVal' + id).text());
            var Rate = parseInt($('#tdRate' + id).text());
            if (parseInt($('#tdTotalBilledQty' + id).text()) == 0 && (parseInt($("#tdPurchasedQty" + id).text()) < parseInt($('#txtBillQty' + UqId).val()))) {
                $('#txtBillQty' + UqId).val("0");
                $('#txtBillValue' + UqId).val("0");
                alert("Billed Quantity Should Not Be Greater then Required Quantity");
                return false;
            }
            else if (parseInt($('#tdTotalBilledQty' + id).text()) != 0 && (parseInt($('#tdBalanceQty' + id).text()) < parseInt($('#txtBillQty' + UqId).val()))) {
                $('#txtBillQty' + UqId).val("0");
                $('#txtBillValue' + UqId).val("0");
                alert("Billed Quantity Should Not Be Greater then Required Quantity");
                return false;
            }
            $("#txtBillValue" + UqId).val((BilledQuantity) * (Rate));
            $("#tdTotalBilledQty" + id).text(BilledQuantity + TotalBilledQuantity);
            $("#tdTotalBilledVal" + id).text(parseInt($("#tdTotalBilledQty" + id).text()) * (Rate));
            $("#tdBalanceQty" + id).text(BalanceQuantity - BilledQuantity);
            $("#tdBalanceVal" + id).text(parseInt($("#tdBalanceQty" + id).text()) * (Rate));
        };
    </script>
</asp:Content>
