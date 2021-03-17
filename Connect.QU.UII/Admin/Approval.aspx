<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Approval.aspx.cs" Inherits="Connect.QU.UII.Admin.Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Approval</title>


    <style>
        .paginate_button {
            margin-left: 1%;
        }

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
                padding: 45px !important;
                border: 2px solid #ddd;
                width: 90%;
                margin: 20px auto;
                background-color: white;
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
    </style>

    <link href="../css/Admin.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <div class="content-wrapper">
        <section class="content">
            <div class="container" style="margin-top: 5%; margin-bottom: 1%; width: 100%;">
                <table id="tblApprove" class="table table-striped cf table-bordered table-striped table-responsive dataTable" style="table-layout: fixed"></table>
            </div>
            <%--Quotation Details Start--%>
            <div class="AppFormBody" id="ApplicationForm">
                <h4 class="text-center" id="QuotationApplicationText"><b>QUOTATION APPLICATION</b></h4>
                <p>
                    </br>
                            <div class="form-inline AppX">
                                <div class="form-row">
                                    <div class="col-lg-4">
                                        <label class="control-label" style="margin-right: 6%">Project Name </label>
                                        <b />
                                        <input type="text" id="txtProjectName" class="form-control" disabled />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label" style="margin-right: 5%">Financial Year</label><b />
                                        <input type='text' class="form-control" id="txtFinancialYear" disabled />
                                    </div>
                                    <div class="col-lg-4">
                                        <label for="txtQuotationDate" class="control-label" style="margin-right: 9%">Date</label><b />
                                        <input type='text' class="form-control" id="txtQuotationDate" disabled />
                                    </div>
                                </div>
                            </div>
                </p>
                <br />
                <br />
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 2%">Company Name </label>
                                <input type="text" id="txtCompanyName" class="form-control" disabled />
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 2%">Contact Person   </label>
                                <input type="text" id="txtContactPerson" class="form-control" disabled />
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 2%">Address </label>
                                <input type="text" id="txtAddress" class="form-control" disabled />
                            </div>
                        </div>
                    </div>
                </p>
                <br />
                <br />
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 20.8%">GSTIN</label>
                                <input type="text" id="txtGstinParty" class="form-control" disabled />
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 1.8%">Payment Terms</label>
                                <input type="text" id="txtaymentTerms" class="form-control" disabled />
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-left: -13%">Quote Validity </label>
                                &nbsp;&nbsp;
                                        <input type="text" id="txtValidityOfQuote" class="form-control" disabled />
                            </div>
                        </div>
                </p>
                <br />
                <br />
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 2%">Place Of Supply </label>
                                <input type="text" id="txtPlaceOfSupply" class="form-control" disabled />
                            </div>
                        </div>
                    </div>
                </p>
                <br />
                <br />
                <br />
                <div class="row APPTest">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto">
                            <table id="tblCustomers" class="table" cellpadding="0" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th style="width: 150px">Description Of Goods</th>
                                        <th style="width: 150px">Qty</th>
                                        <th style="width: 150px">HSN/SAC</th>
                                        <th style="width: 150px">Rate/Unit</th>
                                        <th style="width: 150px">Value Without Tax</th>
                                        <th style="width: 150px">IGST %</th>
                                        <th style="width: 150px">Amount</th>
                                        <th style="width: 150px">Total Amount</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <input type="button" value="Remove" onclick="Remove(this)" /></td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td>
                                            <select id="ddlItem" name="ddlItemName" class="selectBox form-control hidden"></select>
                                        </td>
                                        <td>
                                            <input type="text" id="txtQty" hidden /></td>
                                        <td>
                                            <input type="text" id="txtHsn" hidden /></td>
                                        <td>
                                            <input type="text" id="txtRate" hidden /></td>
                                        <td>
                                            <input type="text" id="txtValue" hidden /></td>
                                        <td>
                                            <input type="text" id="txtIgst" hidden /></td>
                                        <td>
                                            <input type="text" id="txtAmount" hidden /></td>
                                        <td>
                                            <input type="text" id="txtTotalAmount1" hidden /></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
                <br />
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 3%">Taxable Amount  </label>
                                <input type="text" id="txtTaxableAmount" class="form-control" disabled />
                            </div>
                            <div class="col-lg-8">
                                <label class="control-label" style="margin-right: 3%">Total Words </label>
                                <input type="text" id="txtTotalWords" class="form-control" disabled />
                            </div>
                        </div>
                    </div>
                </p>
                <br />
                <br />
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 6%; margin-left: 14%">Freight </label>
                                <input type="text" id="txtFreight" class="form-control" disabled />
                            </div>
                            <div class="col-lg-8">
                                <label class="control-label" style="margin-right: 3%">Grand Total</label>
                                <input type="text" id="txtGrandTotal" class="form-control" disabled />
                            </div>
                        </div>
                    </div>
                </p>
                <br />
                <br />
                <br />
                <p>Bank Details</p>
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 3%">Bank Name </label>
                                <input type="text" id="txtBankName" class="form-control" disabled />
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 3%">Branch Name</label>
                                <input type="text" id="txtBranchName" class="form-control" disabled />
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label" style="margin-right: 3%">Account No.</label>
                                <input type="text" id="txtBankAccountNo" class="form-control" disabled />
                            </div>
                        </div>
                    </div>
                </p>
                <br />
                <br />
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-12">
                                <label class="control-label" style="margin-left: -3.6%">Bank Branch IFSC</label>
                                &nbsp;&nbsp;
                                <input type="text" id="txtBranchIfsc" class="form-control" disabled />
                            </div>
                        </div>
                    </div>
                </p>
                <br />
                <br />
                <p>
                    <div class="form-inline AppX">
                        <div class="form-row">
                            <div class="col-lg-12">
                                <label class="control-label" style="margin-left: -2%; margin-right: 1%">Signature Date</label>
                                <input type="text" id="txtSignatureDate" class="form-control" disabled />
                            </div>
                        </div>
                    </div>
                </p>

            </div>
            <%--Quotation Details End --%>
        </section>
    </div>
    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
    <link href="../css/DataTable/dataTablesbootstrap.css" rel="stylesheet" />
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

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
            $('#ApplicationForm').hide();
            GetQuotationDetails(0);

        });

        function AskApproval(evnt, QID) {
            event.preventDefault();
            var conf = confirm("Are you sure you want to Approve the Quotation ?")
            if (!conf) {
                return false;
            }
            var chkVal = $('#chkApprove').prop("checked");
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Approval.aspx/InsertApprovalData",
                type: "POST",
                data: "{'chkVal':'" + chkVal + "', 'QID': '" + QID + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    if (len > 0) {
                        alert('Data Approved Successfully');
                        GetQuotationDetails(0);
                    }
                    else {
                        alert('No Data Approved');
                    }
                },
                error: function (err) {

                    alert('No Data Approved');
                }
            });
        }

        function GetQuotationDetails(QID) {
            var element = "";
            var Counter = 1;
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Approval.aspx/GetQuotationDetails",
                type: "POST",
                data: "{QID:" + QID + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#tblApprove').empty();
                    element += '<thead class="cf"><tr class="bgblue-Over">';
                    element += '<th>S NO</th>';
                    element += '<th>Q NO</th>';
                    element += '<th>Q Type</th>';
                    element += '<th>Q From</th>';
                    element += '<th>Q To</th>';
                    element += '<th>Date</th>';
                    element += '<th>Approve</th>';
                    element += '<th>Details</th>';
                    element += '</tr></thead><tbody>';
                    if (len == 0) {
                        element = element + '<tr><td colspan="3"><p class="text-center">No Approval Data Available</p></td></tr>'
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].QID + '</td>';
                        element = element + '<td>' + getResult[i].QNo + '</td>';
                        element = element + '<td>' + getResult[i].QType + '</td>';
                        element = element + '<td>CCPL</td>';
                        element = element + '<td>' + getResult[i].QToCompanyName + '</td>';
                        element = element + '<td>' + GetProperDate(getResult[i].QDate) + '</td>';
                        if (getResult[i].Approved) {
                            element = element + '<td>' + '<input type="checkbox" disabled checked name="Approve" id="chkApprove" />';
                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" name="Approve" onclick="AskApproval(event,' + getResult[i].QID + ');return false;"  id="chkApprove" />';
                        }
                        element = element + '<td><a href="#"><span class="label label-success" onclick="ViewDetails(' + getResult[i].QID + ');return false;"<i class="fa fa-file-text"  aria-hidden="true"></i> View </span><span class="label label-warning"   onclick="HideDetails(' + getResult[i].QID + '); return false;" style="margin-left: 23px;"><i class="fa fa-file-text"  aria-hidden="true"></i>Hide</span></a></td>';

                        element = element + '</tr>';
                    }
                    element = element + '</tbody>';
                    $("#tblApprove").append(element);
                    $('#tblApprove').dataTable({
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

        function GetTOCDetails(QID) {
            var element = "";
            $("#tblCustomers > TBODY").empty();
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Approval.aspx/GetTOCDetails",
                type: "POST",
                data: "{QID:" + QID + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        var a = getResult[i].DescriptionOfGoods;
                        var b = getResult[i].Qty;
                        var c = getResult[i].Hsn;
                        var d = getResult[i].Rate;
                        var e = getResult[i].Value;
                        var f = getResult[i].Igst;
                        var g = getResult[i].Amount;
                        var h = getResult[i].TotalAmount1;
                        btnAddCall(a, b, c, d, e, f, g, h);
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }

        function ViewDetails(QID) {
            $('#ApplicationForm').show();
            GetTOCDetails(QID);
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Approval.aspx/GetQuotationDetails",
                type: "POST",
                data: "{QID:" + QID + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    if (len > 0) {
                        $('#txtProjectName').val(getResult[0].ProjectName),
                        $('#txtFinantialYear').val(getResult[0].FinantialYear),
                       $('#txtQuotationDate').val(GetProperDate(getResult[0].QDate)),
                        $('#txtCompanyName').val(getResult[0].QToCompanyName),
                        $('#txtGstinParty').val(getResult[0].QToGSTINNo),
                        $('#txtContactPerson').val(getResult[0].QToContactPerson),
                        $('#txtAddress').val(getResult[0].QToAddress),
                        $('#txtaymentTerms').val(getResult[0].PaymentTerms),
                        $('#txtValidityOfQuote').val(getResult[0].ValidityOfQuote),
                        $('#txtPlaceOfSupply').val(getResult[0].PlaceOfSupply),
                        $('#txtGrandTotal').val(getResult[0].TotalAmountDigit),
                        $('#txtTotalWords').val(getResult[0].TotalAmountWords),
                        $('#txtTaxableAmount').val(getResult[0].TaxableAmount),
                        $('#txtFreight').val(getResult[0].Freight),
                       $('#txtBankName').val(getResult[0].BankName),
                       $('#txtBranchName').val(getResult[0].BranchName),
                        $('#txtBankAccountNo').val(getResult[0].BankAccNo),
                       $('#txtBranchIfsc').val(getResult[0].BankBranchIFSC),
                       $('#txtSignatureDate').val(GetProperDate(getResult[0].SignatureDate))
                        $('#txtDescriptionOdGoods').val(getResult[0].DescriptionOfGoods),
                        $('#txtQty').val(getResult[0].Quantity),
                        $('#txtHsn').val(getResult[0].HsnCode),
                        $('#txtRate').val(getResult[0].Rate),
                        $('#txtValue').val(getResult[0].Value),
                        $('#txtIgst').val(getResult[0].Igst),
                        $('#txtAmount').val(getResult[0].Amount),
                        $('#txtTotalAmount1').val(getResult[0].TotalAmount1)
                    }
                },
                error: function (err) {
                    alert('No Data Available');
                }
            });
        }

        function HideDetails() {
            $('#ApplicationForm').hide();
        }

        function btnAddCall(DescriptionOfGoods, Qty, Hsn, Rate, Value, Igst, Amount, TotalAmount1) {

            //Reference the Name and Country TextBoxes.
            var txtDescriptionOfGoods = DescriptionOfGoods;//$("#txtDescriptionOfGoods");
            var txtQty = Qty;//$("#txtQty");
            var txtHsn = Hsn;//$("#txtHsn");
            var txtRate = Rate;//$("#txtRate");
            var txtValue = Value;//$("#txtValue");
            var txtIgst = Igst;//$("#txtIgst");
            var txtAmount = Amount;//$("#txtAmount");
            var txtTotalAmount1 = TotalAmount1;//$("#txtTotalAmount1");

            //Get the reference of the Table's TBODY element.
            var tBody = $("#tblCustomers > TBODY")[0];

            //Add Row.
            var row = tBody.insertRow(-1);

            //Add Name cell.
            var cell = $(row.insertCell(-1));
            cell.html(DescriptionOfGoods);

            //Add Country cell.
            cell = $(row.insertCell(-1));
            cell.html(Qty);

            cell = $(row.insertCell(-1));
            cell.html(Hsn);

            cell = $(row.insertCell(-1));
            cell.html(Rate);

            cell = $(row.insertCell(-1));
            cell.html(Value);

            cell = $(row.insertCell(-1));
            cell.html(Igst);
            cell = $(row.insertCell(-1));
            cell.html(Amount);

            cell = $(row.insertCell(-1));
            cell.html(TotalAmount1);

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
