<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Store/Store.Master" CodeBehind="Execution.aspx.cs" Inherits="Connect.QU.UII.Store.Execution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Execution Details</title>

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
    Updated on May 16 2017
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


        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            /*background: rgba( 255, 255, 255, .8 ) url('../images/loadingimage.png') 50% 50% no-repeat;*/
            background: url(http://localhost:13314/images/loadingimage.png) 50% 50% no-repeat rgb(249,249,249);
        }

        /* When the body has the loading class, we turn
   the scrollbar off with overflow:hidden */
        body.loading {
            overflow: hidden;
        }

            /* Anytime the body has the loading class, our
   modal element will be visible */
            body.loading .modal {
                display: block;
            }

        .paginate_button {
            margin-left: 1%;
        }
        /*Spinner Style Start*/
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
        /*Spinner Style End*/
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
                                    <label class="control-label" for="txtCode" style="margin-left: 1%">PURCHASE ORDER</label>
                                </div>
                                </br>
                                <div class="row">

                                    <div class="col-lg-4">
                                        <label class="control-label" for="ddlQuotationName">Document Number</label>
                                        <select id="ddlQuotationId" name="ddlQuotationName" class="selectBox form-control"></select>
                                    </div>

                                    <div class="col-lg-4">
                                        <label class="control-label" for="txtDivision">Division</label>
                                        <input type="text" id="txtDivision" class="form-control" />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label" for="txtCreationDate">Creation Date</label>
                                        <div class='input-group date AppFormdatetimepicker' id='datetimepicker1'>
                                            <input type='text' class="form-control" id="txtCreationDate" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>

                                </div>

                                </br>




                            </div>

                            <div class="form-group" style="width: 100%; margin-top: 1%;">

                                <div class="row">
                                    <div class="col-lg-4">
                                        <label class="control-label" for="txt
                                            Number"
                                            style="margin-left: 5%">
                                            Version Number</label>
                                        <input type="text" id="txtVersionNumber" class="form-control" />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label" for="txtSupplierName" style="margin-left: -12%">Supplier Name</label>
                                        <input type="text" id="txtSupplierName" class="form-control" />
                                    </div>

                                    <div class="col-lg-4">
                                        <label class="control-label" for="txtModificationDate" style="margin-left: -7%">Modification Date</label>
                                        <div class='input-group date AppFormdatetimepicker' id='datetimepicker2'>
                                            <input type='text' class="form-control" id="txtModificationDate" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>




                            </div>

                            <br />
                            <br />

                            <div class="form-group" style="width: 100%; margin-top: 1%;">
                                <div class="row APPTest">
                                    <div class="col-lg-12">
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
                                                    <%-- <tr>

                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>--%>
                                                </tbody>
                                                <tfoot>
                                                    <tr>

                                                        <td>
                                                            <input type="text" id="txtItemDescription" disabled style="width: 100%;" /></td>
                                                        <td>
                                                            <input type="text" id="txtQuantity" disabled style="width: 100%;" /></td>
                                                        <td>
                                                            <input type="text" id="txtUnit" disabled style="width: 100%;" /></td>


                                                        <td>
                                                            <input type="text" id="txtUnitPrice" disabled style="width: 100%;" /></td>

                                                        <td>
                                                            <input type="text" id="txtValue" disabled style="width: 100%;" /></td>
                                                        <td>
                                                            <input type="text" id="txtTotalBilledQuantity" disabled style="width: 100%;" /></td>
                                                        <td>
                                                            <input type="text" id="txtTotalBilledValue" disabled style="width: 100%;" /></td>
                                                        <td>
                                                            <input type="text" id="txtBalanceQuantity" disabled style="width: 100%;" /></td>
                                                        <td>
                                                            <input type="text" id="txtBalanceValue" disabled style="width: 100%;" /></td>

                                                        <%--<td>
                                                            <input type="button" id="btnAdd" value="Add" /></td>--%>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            <div class="form-group" style="margin-top: 1%; width: 100%;">
                                <div class="row">
                                    <div class="col-lg-11">
                                        <input id="btnSave" type="button" value="Save" class="btn btn-success" />

                                        <input id="btnUpdate" type="button" value="Update" class="btn btn-success" />
                                    </div>
                                    <div class="col-lg-1">
                                        <input type="button" id="btnAdd" value="Add" class="btn btn-warning" />
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container" style="margin-top: 2%">
                <table id="CityTableId" class="table table-striped cf">
                </table>
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->

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
            }
        });

        $(document).ready(function () {
            //validation starts
            $('.integer').keyup(function (e) {
                if (/\D/g.test(this.value)) {
                    this.value = this.value.replace(/\D/g, '');
                }
            });
            checkNameEmpty("#txtDivision"); //integer
            checkNameEmpty("#txtVersionNumber");
            checkNameEmpty("#txtSupplierName");
            //validation ends

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
                //DeleteRowCell();
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

            //var ArrData = [];


            //new code 

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

                    //    cell.html('<input type="text" value="0" class="txtBillQty" data-ID=' + i + ' id="BillQuantity' + i + '"/>');
                    var ct = $("<input />");
                    ct.attr("type", "text");
                    ct.attr("data-ID", i);
                    ct.attr("data-UqId", i + '-' + count);
                    ct.attr("class", "BillQuantity" + i);
                    ct.attr("class", "integer");
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

            //var index = $('#ddlItem').get(0).selectedIndex;
            //$('#ddlItem option:eq(' + index + ')').remove();

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

                    //style = "width:59px"
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Document Number</th>';
                    element = element + '<th>Division</th>';
                    element = element + '<th>Version Nember</th>';
                    element = element + '<th>Supplier Name</th>';
                    element = element + '<th>Creation Date</th>';
                    element = element + '<th>Action</th>';

                    element = element + '</tr></thead><tbody>';

                    if (len == 0) {
                        element = element + '<tr><td colspan="3"><p class="text-center">No Execution Data Available</p></td></tr>'
                    }

                    for (var i = 0; i < len; i++) {
                        //alert(i);

                        //   alert(getResult[i].RequisitionDate);

                        element = element + '<tr>';
                        //element = element + '<td>' + Counter++ + '</td>';
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
            //alert(Mode);
            //if (Mode == 1) {
            $('input[type=text]').each(function () {
                $(this).val('');
            });

            $('select').each(function () {
                $(this).val('0');
            });
            //}
        }
        //toc details
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
                        //pravesh

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
            //head ends
        }

        function btnAddCallExecution(ItemDescription, Unit, UnitPrice, Value, TotalBilledQuantity, TotalBilledValue, BalanceQuantity, BalanceValue, BilledQuantity, BilledValue, Quantity, ItemId, counter) {
            debugger;

            //Reference the Name and Country TextBoxes.
            var txtItemDescription = ItemDescription;
            var txtUnit = Unit;
            var txtUnitPrice = UnitPrice;
            var txtValue = Value;
            var txtTotalBilledQuantity = TotalBilledQuantity;
            var txtTotalBilledValue = TotalBilledValue;
            var txtBalanceQuantity = BalanceQuantity;
            var txtBalanceValue = BalanceValue;
            var txtQuantity = Quantity;
            //var BilledQuantity = BilledQuantity;
            //var BilledValue = BilledValue;

            //Get the reference of the Table's TBODY element.
            var tBody = $("#tblCustomers > TFOOT")[0];
            //Add Row.
            var row = tBody.insertRow(-1);
            //Add Name cell.
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
                    // alert(index + ': ' + value);   // alerts 0:[1 ,  and  1:2]
                    cell = $(row.insertCell(-1));
                    cell.html(value);
                    cell.attr("class", "BillQuantity" + counter);
                    cell.attr("class", "integer");
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


            //Reference the Name and Country TextBoxes.
            var txtDescriptionOfGoods = DescriptionOfGoods;

            var txtPurchasedQty = PurchaseQty;
            var txtRate = Rate;


            var txtAmount = Amount;
            var txtUnit = Unit;

            //Get the reference of the Table's TBODY element.
            var tBody = $("#tblCustomers > TFOOT")[0];

            //Add Row.
            var row = tBody.insertRow(-1);

            //Add Name cell.
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
                debugger;
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

                        //if ($('.BillQuantity' + len)[o].value != "") {
                        if ($('.BillQuantity' + len)[o].innerHTML != "") {
                            TOCExecution.BilledQuantity = TOCExecution.BilledQuantity + "," + $('.BillQuantity' + len)[o].innerHTML;
                        }
                        else {
                            TOCExecution.BilledQuantity = TOCExecution.BilledQuantity + "," + $('.BillQuantity' + len)[o].value;
                        }
                        //}
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
        function GetExecutionDetailsForUpdate(ExecutionId, QuotationId, CreationDate, Documentno, Division, VersionNo, SupplierName) {
            $("#tblCustomers").load("Execution.aspx #tblCustomers");
            $('#hidHotelId').val(ExecutionId);
            $("#btnAdd").show();
            //GetQuotationDetails(0);
            GetTOCExecutionDetails(ExecutionId);

            $('#ddlQuotationId').val(QuotationId);
            $('#txtDivision').val(Division);
            $('#txtCreationDate').val(CreationDate);
            $('#txtVersionNumber').val(VersionNo);
            $('#txtSupplierName').val(SupplierName);
            $('#txtModificationDate').val(CreationDate);
            //GetItemsDetails(QuotationId);

            $("#btnUpdate").show();
            $("#btnSave").hide();
        }



        function Calculate(x) {
            //alert($(x).attr('data-id'))
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
                //if (parseInt($('#txtBillQty' + UqId).val()) >= parseInt($("#tdPurchasedQty" + id).text())) {
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
