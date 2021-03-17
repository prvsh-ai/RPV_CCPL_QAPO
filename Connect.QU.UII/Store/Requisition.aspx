<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Store/Store.Master" CodeBehind="Requisition.aspx.cs" Inherits="Connect.QU.UII.Store.Requisition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Requisition Details</title>

    <style type="text/css">
        .FormHeader {
            text-align: center;
            margin: 15px auto;
        }

            .FormHeader h2, .FormHeader h4, .FormHeader h5, .FormHeader p {
                text-align: center;
                margin-top: 2px;
                margin-bottom: 2px;
            }

            .FormHeader h4 {
                text-decoration: underline;
            }

        /*Application Form
    ------------------- 
    Updated on Mar 07 2021
    ----------------------------
*/
        #ApplicationForm {
            padding: 0;
            border: 0px solid #ddd;
            width: 100%;
            margin: 0 auto;
        }

            #ApplicationForm .list-inline > li {
                display: block;
            }

            #ApplicationForm .APLogo {
                max-width: 255px;
            }

            #ApplicationForm .HR2App {
                border: 1px solid #555;
            }

            #ApplicationForm .AppFormBody input[type='text'], .PasswordControl {
                height: 25px;
                color: #1b2cef;
                width: 100%;
            }

            #ApplicationForm .AppFormdatetimepicker .form-control {
                height: 34px !important;
                box-shadow: none;
                border-radius: 0;
            }

            #ApplicationForm .AppFormdatetimepicker .input-group-addon {
                border-radius: 0;
            }

            #ApplicationForm .AppFormTxtArea {
                margin: 40px auto;
            }

                #ApplicationForm .AppFormTxtArea p {
                    margin: 10px 0 0;
                }


        @media (min-width: 480px) {
            #ApplicationForm {
                padding: 10px;
                border: 2px solid #ddd;
                width: 90%;
                margin: 20px auto;
            }
        }

        @media (min-width: 768px) {
            #ApplicationForm .AppFormBody .AppX input[type='text'], .PasswordControl {
                border: none;
                height: 30px;
                border-bottom: 1px solid #999;
                color: #1b2cef;
                width: auto;
            }
        }

        @media (min-width: 768px) {
            #ApplicationForm .AppFormBody .APPTest input[type='text'], .PasswordControl {
                border: none;
                height: 30px;
                border-bottom: 1px solid #999;
                color: #1b2cef;
            }

            #ApplicationForm .list-inline > li {
                display: inline-block;
            }

            #ApplicationForm .AppFormdatetimepicker .form-control {
                border: none;
                box-shadow: 0 0 0 0;
                border-radius: 0;
                border-bottom: 1px solid #555;
                height: 30px;
            }

            #ApplicationForm .AppFormdatetimepicker .input-group-addon {
                background: transparent;
                border: 0;
                border-bottom: 1px solid #999 !important;
                border-radius: 0;
            }
        }

        .text-bold {
            font-weight: bold;
        }

        .QS-Block {
            border: 1px solid #999;
            margin: 5px 0;
            padding: 5px;
            box-shadow: 3px 5px 6px #ddd;
        }

            .QS-Block .QSoption-List input[type='radio'] {
                margin: 0 3px;
            }



        table, td, th {
            border: 1px solid black;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        #watermark {
            color: beige;
            font-size: 131pt;
            -webkit-transform: rotate(-45deg);
            -moz-transform: rotate(-45deg);
            position: absolute;
            width: 100%;
            margin: 0;
            z-index: -1;
            left: -100px;
            top: -200px;
        }

        .hello {
            width: 100% !important;
        }

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

        .paginate_button {
            margin-left: 1%;
        }


        /*spinner starts*/
        #overlay {
            position: fixed;
            top: 0;
            z-index: 100;
            width: 100%;
            height: 100%;
            display: none;
            background: rgba(0,0,0,0.6);
        }

        .cv-spinner {
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .spinner {
            width: 60px;
            height: 60px;
            border: 4px #ddd solid;
            border-top: 4px #2e93e6 solid;
            border-radius: 50%;
            animation: sp-anime 0.8s infinite linear;
        }

        @keyframes sp-anime {
            100% {
                transform: rotate(360deg);
            }
        }

        .is-hide {
            display: none;
        }
        /*spinner ends*/
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
                                <div class="row">
                                    <div class="col-lg-4">
                                        <label class="control-label" for="ddlQuotationName">QUOTATION NUMBER</label>
                                        <select id="ddlQuotationId" style="width: 56%;" name="ddlQuotationName" class="selectBox form-control"></select>
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label" for="txtRequisitionNumber">REQUISITION NUMBER</label>
                                        <input type="text" id="txtRequisitionNumber" class="form-control" />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label" for="txtCode">REQUIRED BY</label>
                                        <input type="text" id="txtRequiredBy" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <label class="control-label" for="txtRequisitionDate">REQUISITION DATE</label>
                                        <div class='input-group date AppFormdatetimepicker' id='datetimepicker3' style="margin-left: 4%; width: 56%;">
                                            <input type='text' class="form-control" id="txtRequisitionDate" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">

                                        <label class="control-label" for="txtCode">APPROVED BY</label>
                                        <input type="text" id="txtApprovedBy" style="margin-left: 16%;" class="form-control" />
                                    </div>
                                    <div class="col-lg-4">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div style="overflow-x: auto">
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <div class="row APPTest">
                                    <div class="col-lg-12">
                                        <div style="overflow-x: auto">
                                            <table id="tblCustomers" class="table" cellpadding="0" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 150px">Description Of Goods</th>
                                                        <th style="width: 150px">Required Quantity</th>
                                                        <th style="width: 150px">In Stock Qty</th>
                                                        <th style="width: 150px">Purchase Quantity</th>
                                                        <th style="width: 150px">Rate</th>
                                                        <th style="width: 150px">Amount</th>
                                                        <th style="width: 150px">Bill Y/N</th>
                                                        <th style="width: 150px">Po Item No</th>
                                                        <th style="width: 150px"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%-- <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td>
                                                            <input type="button" value="Remove" onclick="Remove(this)" />

                                                        </td>
                                                    </tr>--%>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <td>
                                                            <select id="ddlItem" name="ddlItemName" class="selectBox form-control hello"></select>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtRequiredQty" class="hello integer" /></td>
                                                        <td>
                                                            <input type="text" id="txtInStockQty" class="hello integer" /></td>
                                                        <td>
                                                            <input type="text" id="txtPurchaseQty" class="hello integer" /></td>
                                                        <td>
                                                            <input type="text" id="txtRate" class="hello integer" /></td>
                                                        <td>
                                                            <input type="text" id="txtAmount" class="hello integer" /></td>
                                                        <td>
                                                            <select id="ddlBillAvailable" class="form-control" name="GstinNoType">
                                                                <option value="1">YES</option>
                                                                <option value="0">NO</option>
                                                            </select></td>
                                                        <td>
                                                            <input type="text" id="txtPOItemNumber" class="hello" /></td>
                                                        <td>
                                                            <input type="button" id="btnAdd" value="Add" /></td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <label class="control-label" style="margin-left: 3%;" for="txtCode">GRAND TOTAL</label>
                                            <input type="text" id="txtGrandTotal" style="margin-left: 5%;" class="form-control integer" />
                                        </div>
                                        <div class="col-lg-4">
                                            <label class="control-label" for="txtCode">PREPARED BY</label>
                                            <input type="text" id="txtPreparedBy" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="margin-top: 1%; width: 100%;">
                                <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                                <input id="btnUpdate" type="button" value="Update" class="btn btn-success" />
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
        </section>
        <!-- /.content -->

        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>
        <input id="hidHotelId" type="hidden" />

    </div>
    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.13.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/DataTable/dataTablesbootstrap.css" rel="stylesheet" />
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

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

        var dropArr = new Array();
        $(document).ready(function () {

            //validation starts
            $('.integer').keyup(function (e) {
                if (/\D/g.test(this.value)) {
                    this.value = this.value.replace(/\D/g, '');
                }
            });
            checkNameEmpty("#txtRequiredBy"); //integer
            checkNameEmpty("#txtRequisitionDate");
            checkNameEmpty("#txtApprovedBy");
            checkNameEmpty("#txtRequisitionNumber");
            checkNameEmpty("#txtPreparedBy");
            //validation ends


            //qty to rate = value without tax
            $('#txtPurchaseQty,#txtRate,#txtAmount').change(function () {
                var a = 1;
                if ($('#txtPurchaseQty').val() != "") {

                    if (parseFloat($("#txtPurchaseQty").val()) > $("#txtInStockQty").val()) {
                        //do something
                        alert('Purchase quantity can not be greater then In Stock Quantity');
                        $("#txtPurchaseQty").val(0);
                        $('#txtAmount').val(0);
                        return false;
                    }

                    a = parseInt($('#txtPurchaseQty').val());
                }
                var b = parseInt($('#txtRate').val());
                var c = a * b;
                $('#txtAmount').val(c);
            });

            $("#btnUpdate").hide();
            $("#btnSave").show();

            GetRequisitionDetails(0);
            GetQuotationDetails(0);
            $(function () {
                $('#datetimepicker3').datetimepicker({ defaultDate: new Date() });
            });

            var data = {};

            $(function () {
                $('#ddlCompanyLocation').select2({
                    placeholder: "Select Nationality",
                    // minimumInputLength: 1,
                    maximumInputLength: 1
                    // allowClear: true
                });
                $('#ddlCompanyLocationUpdate').select2({
                    placeholder: "Select Nationality",
                    // minimumInputLength: 1,
                    maximumInputLength: 1
                    // allowClear: true
                });
            });
            $('#ddlQuotationId').change(function () {
                GetItemsDetails($('#ddlQuotationId').val());
            });

            $('#ddlItem').change(function () {
                GetItemsDescriptionDetails($('#ddlQuotationId').val(), $('#ddlItem').val());
            });

            $("#btnSave").click(function () {
                var validations = Validation_Requisition(
                "#ddlQuotationId",
                "#txtRequisitionDate",
                "#txtRequiredBy",
                "#txtApprovedBy",
                "#txtRequisitionNumber",
                "#txtPreparedBy");
                if (validations) {
                }
                else {
                    return false;
                }

                data.Mode = 1;
                data.RequisitionId = 0;
                data.QuotationId = parseInt($('#ddlQuotationId').val());
                data.RequisitionDate = $('#txtRequisitionDate').val(); //$("#RequisitionDate option:selected").text();//
                data.RequiredBy = $('#txtRequiredBy').val();
                data.ApprovedBy = $('#txtApprovedBy').val();
                data.RequisitionNumber = $('#txtRequisitionNumber').val();
                data.PreparedBy = $('#txtPreparedBy').val();
                SaveUpdateRequisitionDetails(data);
                GetRequisitionDetails(0);
            });

            $("#btnUpdate").click(function () {
                var validations = Validation_Requisition(
                "#ddlQuotationId",
                "#txtRequisitionDate",
                "#txtRequiredBy",
                "#txtApprovedBy",
                 "#txtRequisitionNumber",
                "#txtPreparedBy");
                if (validations) {
                }
                else {
                    return false;
                }

                data.Mode = 2;
                data.RequisitionId = $('#hidHotelId').val();
                data.QuotationId = $('#ddlQuotationId').val();
                data.RequisitionDate = $('#txtRequisitionDate').val(); //$("#RequisitionDate option:selected").text();//
                data.RequiredBy = $('#txtRequiredBy').val();
                data.ApprovedBy = $('#txtApprovedBy').val();
                data.RequisitionNumber = $('#txtRequisitionNumber').val();
                data.PreparedBy = $('#txtPreparedBy').val();
                SaveUpdateRequisitionDetails(data);
                GetRequisitionDetails(0);
            });

            var ArrData = [];

            $("body").on("click", "#btnAdd", function () {

                dropArr.push(parseInt($("#ddlItem option:selected").attr('data-itemid')));

                var validations = Validation_TOCRequisition(
               "#ddlItem",
               "#txtRequiredQty",
               "#txtInStockQty",
               "#txtPurchaseQty",
               "#txtRate",
               "#txtAmount",
               "#txtPOItemNumber");
                if (validations) {
                }
                else {
                    return false;
                }
                $("#ddlQuotationId").prop('disabled', true);
                var txtDescriptionOfGoods = $("#ddlItem option:selected").text();



                var txtRequiredQty = $("#txtRequiredQty");
                var txtInStockQty = $("#txtInStockQty");
                var txtPurchaseQty = $("#txtPurchaseQty");
                var txtRate = $("#txtRate");
                var txtAmount = $("#txtAmount");
                var chkBillAvailable = $("#ddlBillAvailable option:selected").text();
                var txtPOItemNumber = $("#txtPOItemNumber");
                var tBody = $("#tblCustomers > TBODY")[0];
                var row = tBody.insertRow(-1);
                var cell = $(row.insertCell(-1));
                cell.html(txtDescriptionOfGoods);
                cell.attr('data-itemid', $("#ddlItem option:selected").attr('data-itemid'));

                cell = $(row.insertCell(-1));
                cell.html(txtRequiredQty.val());
                cell = $(row.insertCell(-1));
                cell.html(txtInStockQty.val());
                cell = $(row.insertCell(-1));
                cell.html(txtPurchaseQty.val());
                cell = $(row.insertCell(-1));
                cell.html(txtRate.val());
                cell = $(row.insertCell(-1));
                cell.html(txtAmount.val());
                cell = $(row.insertCell(-1));
                cell.html(chkBillAvailable);
                cell = $(row.insertCell(-1));
                cell.html(txtPOItemNumber.val());
                // funTotalAmount(txtTotalAmount1.val(), txtAmount.val());
                funRecalculateAfterAdding(txtAmount.val());
                cell = $(row.insertCell(-1));
                var btnRemove = $("<input />");
                btnRemove.attr("type", "button");
                btnRemove.attr("onclick", "Remove(this);");
                btnRemove.val("Remove");
                cell.append(btnRemove);

                $("#ddlItem option").prop("selected", false);
                txtRequiredQty.val("");
                txtInStockQty.val("");
                txtPurchaseQty.val("");
                txtRate.val("");
                txtAmount.val("");
                $("#ddlBillAvailable option").prop('selected', false);
                txtPOItemNumber.val("");

                //calling dropdown item
                GetItemsDetails($('#ddlQuotationId').val());

            });

            var index = $('#ddlItem').get(0).selectedIndex;
            $('#ddlItem option:eq(' + index + ')').remove();

        });
        function GetQuotationDetails(QID) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/GetQuotationDetails",
                type: "POST",
                data: "{QID:" + QID + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlQuotationId").append('<option value="0">Select</option>');
                    for (var i = 0; i < len; i++) {
                        // if (getResult[i].Approved) {
                        if (getResult[i].Approved)
                            {
                            // && !(getResult[i].IsRequisition)) {
                            $("#ddlQuotationId").append('<option value=' + getResult[i].QID + '>' + getResult[i].QNo + '</option>');
                        }
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function funRecalculateAfterAdding(amount2) {
            var TotalAmount = 0;

            var amount = parseInt(amount2);

            //if (!isNaN(amount)) {
            //    TotalAmount = amount;
            //}
            if ($('#txtGrandTotal').val() != "") {
                TotalAmount = parseInt($('#txtGrandTotal').val());
            }
            var AddedAmount = parseInt(amount);
            var NewAmount = TotalAmount + AddedAmount;
            $('#txtGrandTotal').val(NewAmount);

        }
        function funRecalculateAfterRemoving(amount) {

            var TotalAmount = 0;
            if ($('#txtGrandTotal').val() != "") {
                TotalAmount = parseInt($('#txtGrandTotal').val());
            }
            var RemovedAmount = parseInt(amount);
            var NewAmount = TotalAmount - RemovedAmount;
            $('#txtGrandTotal').val(NewAmount);
        }
        function GetRequisitionDetails(RequisitionId) {
            var element = "";
            var Counter = 1;
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/GetRequisitionDetails",
                type: "POST",
                data: "{RequisitionId:" + RequisitionId + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#CityTableId').empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th style="width:59px">S NO</th>';
                    element = element + '<th style="width:160px">Req Id</th>';
                    element = element + '<th>Quo Id</th>';
                    element = element + '<th>Date</th>';
                    element = element + '<th>Required By</th>';
                    element = element + '<th>Approved By</th>';
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
                        element = element + '<td></td>';
                        element = element + '</tr>';


                        //element = element + '<tr><td colspan="3"><p class="text-center">No Requisition Data Available</p></td></tr>'
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + Counter++ + '</td>';
                        element = element + '<td>' + getResult[i].RequisitionNumber + '</td>';
                        element = element + '<td>' + getResult[i].QuotationNumber + '</td>';
                        element = element + '<td>' + GetProperDate(getResult[i].RequisitionDate) + '</td>';
                        element = element + '<td>' + getResult[i].RequiredBy + '</td>';
                        element = element + '<td>' + getResult[i].ApprovedBy + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetRequisitionDetailsForUpdate(' + getResult[i].RequisitionId + ',' + getResult[i].QuotationId + ',\'' + GetProperDate(getResult[i].RequisitionDate) + '\',\'' + getResult[i].RequisitionNumber + '\',\'' + getResult[i].RequiredBy + '\',\'' + getResult[i].ApprovedBy + '\',\'' + getResult[i].PreparedBy + '\'); return false;" ><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
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
            $("#tblCustomers").load("Requisition.aspx #tblCustomers");
            $('input[type=text]').each(function () {
                $(this).val('');
            });
            $('select').each(function () {
                $(this).val('0');
            });
        }

        function GetTOCDetails(RequisitionId) {
            var element = "";
            $("#tblCustomers > TBODY").empty();
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/GetTOCRequisitionDetails",
                type: "POST",
                data: "{RequisitionId:" + RequisitionId + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        var a = getResult[i].DescriptionOfGoods;
                        var b = getResult[i].RequiredQty;
                        var c = getResult[i].InStockQty;
                        var d = getResult[i].PurchaseQty;
                        var e = getResult[i].Rate;
                        var f = getResult[i].Amount;
                        var g = getResult[i].BillAvailable;
                        var h = getResult[i].POItemNo;
                        var j = getResult[i].ItemId;

                        btnAddCall(a, b, c, d, e, f, g, h, j);
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }

        //need to call at btnadd , removebtn, and on edit btnAddCall
        function GetItemsDetails(QID) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/GetQuotationItemDetails",
                type: "POST",
                data: "{QID:" + QID + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlItem").empty();
                    $("#ddlItem").append('<option value="0">Select</option>');
                    for (var i = 0; i < len; i++) {
                        if (getResult[i].ItemName != undefined) {
                            var x = jQuery.inArray(parseInt(getResult[i].ItemId.toString()), dropArr);
                            if (x == (-1)) {
                                $("#ddlItem").append('<option data-itemName=' + getResult[i].ItemName + ' data-itemId=' + getResult[i].ItemId + ' value=' + getResult[i].ItemId + '>' + getResult[i].ItemName + '</option>');
                            }
                        }
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function GetItemsDescriptionDetails(QID, ItemId) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/GetQuotationItemDescriptionDetails",
                type: "POST",
                data: "{QID:" + QID + ",ItemId:" + ItemId + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        $("#txtRequiredQty").val(getResult[i].Qty);
                        $("#txtRate").val(getResult[i].Rate);
                        $("#txtInStockQty").val(getResult[i].InStockQuantity);
                        $("#txtPOItemNumber").val(getResult[i].ItemLineNumber);
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function btnAddCall(DescriptionOfGoods, RequiredQty, InStockQty, PurchaseQty, Rate, Amount, BillAvailable, POItemNo, ItemId) {

            dropArr.push(ItemId);

            var txtDescriptionOfGoods = DescriptionOfGoods;
            var txtRequiredQty = RequiredQty;
            var txtInStockQty = InStockQty;
            var txtPurchasedQty = PurchaseQty;
            var txtRate = Rate;
            var txtBillAvailable = "Yes";
            if (BillAvailable != true) {
                txtBillAvailable = "No";
            }
            var txtAmount = Amount;
            var txtPOItemNo = POItemNo;
            var tBody = $("#tblCustomers > TBODY")[0];
            var row = tBody.insertRow(-1);
            var cell = $(row.insertCell(-1));
            cell.html(DescriptionOfGoods);
            cell.attr('data-itemid', ItemId);

            cell = $(row.insertCell(-1));
            cell.html(txtRequiredQty);

            cell = $(row.insertCell(-1));
            cell.html(txtInStockQty);

            cell = $(row.insertCell(-1));
            cell.html(txtPurchasedQty);

            cell = $(row.insertCell(-1));
            cell.html(txtRate);

            cell = $(row.insertCell(-1));
            cell.html(txtAmount);

            cell = $(row.insertCell(-1));
            cell.html(txtBillAvailable);

            cell = $(row.insertCell(-1));
            cell.html(txtPOItemNo);

            cell = $(row.insertCell(-1));
            var btnRemove = $("<input />");
            btnRemove.attr("type", "button");
            btnRemove.attr("onclick", "Remove(this);");
            btnRemove.val("Remove");
            cell.append(btnRemove);

            funRecalculateAfterAdding(Amount);
        }

        function SaveUpdateRequisitionDetails(data) {
            var tocArr = new Array();
            debugger;
            $("#tblCustomers TBODY TR").each(function () {
                var row = $(this);
                var TOCRequisition = {};
                if ((row.find("TD").eq(0).html()) != "") {
                    TOCRequisition.DescriptionOfGoods = row.find("TD").eq(0).html();
                    TOCRequisition.ItemId = row.find("TD").eq(0).attr('data-itemid');
                    TOCRequisition.RequiredQty = parseInt(row.find("TD").eq(1).html());
                    TOCRequisition.InStockQty = parseInt(row.find("TD").eq(2).html());
                    TOCRequisition.PurchaseQty = parseInt(row.find("TD").eq(3).html());
                    TOCRequisition.Rate = parseInt(row.find("TD").eq(4).html());
                    TOCRequisition.Amount = parseInt(row.find("TD").eq(5).html());
                    if (row.find("TD").eq(6).html() == "YES") {
                        TOCRequisition.BillAvailable = true;
                    }
                    else {
                        TOCRequisition.BillAvailable = false;
                    }
                    TOCRequisition.POItemNo = row.find("TD").eq(7).html();
                    tocArr.push(TOCRequisition);
                }
            });

            data.TableOfContent = tocArr;


            //pravesh

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/SaveUpdateRequisitionDetails",
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

        function GetRequisitionDetailsForUpdate(RequisitionId, QuotationId, RequisitionDate, RequisitionNumber, RequiredBy, ApprovedBy, PreparedBy) {

            $("#tblCustomers").load("Quotation.aspx #tblCustomers");

            //pravesh
            //GetQuotationDetails(0);
            GetTOCDetails(RequisitionId);
            $('#hidHotelId').val(RequisitionId);
            $('#ddlQuotationId').val(QuotationId),
            $('#txtRequisitionDate').val(RequisitionDate),
            $('#txtRequisitionNumber').val(RequisitionNumber),
            $('#txtRequiredBy').val(RequiredBy),
            $('#txtApprovedBy').val(ApprovedBy),
            $('#txtPreparedBy').val(PreparedBy)

            GetItemsDetails(QuotationId);
            $("#btnUpdate").show();
            $("#btnSave").hide();
            $('#txtGrandTotal').val('');
            $('#ddlQuotationId').prop('disabled', true);
        }

        function Remove(button) {



            var row = $(button).closest("TR");
            var name = $("TD", row).eq(0).html();

            funRecalculateAfterRemoving(row[0].cells[5].innerText);

            debugger;
            var x = row[0].cells[0].getAttribute('data-itemid');
            // alert(x);


            if (confirm("Do you want to delete: " + name)) {

                dropArr.splice($.inArray((parseInt(x)), dropArr), 1);
                // alert(dropArr);
                var table = $("#tblCustomers")[0];

                table.deleteRow(row[0].rowIndex);

                //calling dropdown item
                GetItemsDetails($('#ddlQuotationId').val());
            }
        };

    </script>

</asp:Content>

