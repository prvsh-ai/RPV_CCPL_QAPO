<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="Approval.aspx.cs" Inherits="Connect.QU.UII.Page.Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Approval</title>
    <style>
        @media (min-width: 480px) {
            #ApplicationForm {
                padding: 45px !important;
                background-color: white !important;
            }
        }
        
        @media (min-width: 768px) {
    #ApplicationForm .AppFormBody .AppX input[type='text'], .PasswordControl {
        border: none;
        border-bottom: 1px solid #999;
        color: #1b2cef;
        width:100% !important;
    }
}

@media (min-width: 768px) {
    #ApplicationForm .AppFormBody .APPTest input[type='text'], .PasswordControl {
        border: none;
        border-bottom: 1px solid #999;
        color: #1b2cef;
    }
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

            <%--            New--%>
            <div class="row ">
                <div class="col-md-12  col-lg-12 col-sm-12 col-xs-12">
                    <div id="ApplicationForm" class="AppFormBody">
                        <div class="text-right">
                            <div class="form-inline">

                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4 text-justify">
                                  
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <select id="ddlApplicationType" class="form-control" name="ApplicationType">
                                            <option value="1">Quotation</option>
                                            <option value="2">Purchase Order</option>
                                        </select>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="text-center">
                            <h2>CONNECT COMPUSYS PVT. LTD</h2>
                            <h3>Corporate Office:</h3>
                            <p>
                                Flat No. 57 Navjeevan Apartment Pocket 6/3   
                            <br />
                                Sector 1A, Dwarka NEW DELHI – 110 045                   
                            <br />
                                Phone: +91 8800722000  Email anju@connect.co.in         
                            <br />
                                E-Mail:<a href="mailto:sales@connect.co.in"><u> sales@connect.co.in</u></a>
                            </p>
                            <p>
                                <div class="form-inline">

                                    <div class="row">
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">

                                            <label for="txtUserId">GST No</label>

                                            

                                            <select id="ddlQGstinNoType" class="form-control" name="GstinNoType" disabled>
                                                <option value="07AAACC4708J1ZS"><a href="xyz" target="_blank">07AAACC4708J1ZS</a></option>
                                                <option value="07SKACC4708J12T"><a href="xyz" target="_blank">07SKACC4708J12T</a></option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label id="QuotationNoText" for="txtQuotationNo">Quotation No</label>
                                            <input type="text" class="form-control" id="txtGstinNo" disabled />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="ddlQuotationType" id="QuotationTypeText">Quotation Type</label>
                                            <select id="ddlQuotationType" class="form-control" name="QuotationType" disabled>
                                                <option value="1"><a href="xyz" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SALE&nbsp;&nbsp;&nbsp;</a></option>
                                                <option value="2"><a href="xyz" target="_blank">&nbsp;&nbsp;&nbsp;SERVICE&nbsp;&nbsp;&nbsp;</a></option>
                                                <option value="3"><a href="xyz" target="_blank">&nbsp;&nbsp;&nbsp;TENDER&nbsp;&nbsp;&nbsp;</a></option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </p>
                           
                            <hr class="HR2App" />
                        </div>
                        <div class="AppFormBody">
                           
                            <h4 class="text-center" id="QuotationApplicationText">QUOTATION APPLICATION</h4>
                            <p class="text-center">
                                <u>Instructions:</u>  All Applications <u>must be typed </u>; Handwritten Applications will <u>not</u> be accepted
                            </p>
                            <p>
                                <br />
                                <div class="form-inline AppX">
                                    <div class="row">
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtProjectName">Project&nbsp;&nbsp;</label>
                                            <input type="text" id="txtProjectName" class="form-control" disabled />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtFinancialYear">Financial Year</label>
                                            <input type='text' class="form-control" id="txtFinancialYear" disabled />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtQuotationDate">Date:</label><b />
                                            <div class='input-group date AppFormdatetimepicker' id='datetimepicker3'>
                                                <input type='text' class="form-control" id="txtQuotationDate" disabled />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </p>
                            <br />
                            <br />
                            <p class="text-bold">Customer Details:<span class="mandatory" style="color: red">*</span> </p>
                            <br />
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlCompanyId">Name&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type='text' class="form-control" id="txtCompanyName"  disabled/>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                      
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtContactPerson">Contact</label>
                                        <input type="text" id="txtContactPerson" class="form-control" disabled />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtAddress">Address&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtAddress" class="form-control" disabled />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtGstinParty">GST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtGstinParty" class="form-control" disabled />

                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtCompanyEmailId">Email</label>
                                        <input type="text" id="txtCompanyEmailId" class="form-control" disabled />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtValidityOfQuote">Validity&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtValidityOfQuote" class="form-control" disabled />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtPaymentTerms">Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtPaymentTerms" class="form-control" disabled />

                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtPlaceOfSupply">Place</label>
                                        <input type="text" id="txtPlaceOfSupply" class="form-control" disabled />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row APPTest">
                                <div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
                                    <div style="overflow-x: auto">
                                        <table id="tblCustomers" class="table" cellpadding="0" cellspacing="0">
                                            <thead>
                                                <tr style="background-color: lightblue;">
                                                    <th style="width: 150px">S No.</th>
                                                    <th style="width: 150px">Description Of Goods</th>
                                                    <th style="width: 150px">Qty</th>
                                                    <th style="width: 150px">HSN/SAC</th>
                                                    <th style="width: 150px">Rate/Unit</th>
                                                    <th style="width: 150px">Value Without Tax</th>
                                                    <th style="width: 150px">IGST %</th>
                                                    <th style="width: 150px">Amount</th>
                                                    <th style="width: 150px">SGST %</th>
                                                    <th style="width: 150px">Amount</th>
                                                    <th style="width: 150px">CGST %</th>
                                                    <th style="width: 150px">Amount</th>
                                                    <th style="width: 150px">Total Amount</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td>Item No</td>
                                                    <td>
                                                        <select id="ddlItem" name="ddlItemName" class="selectBox form-control"></select>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtQty" class="integer" disabled /></td>
                                                    <td>
                                                        <input type="text" id="txtHsn" disabled /></td>
                                                    <td>
                                                        <input type="text" id="txtRate" class="integer"  disabled/></td>
                                                    <td>
                                                        <input type="text" id="txtValue" class="integer" disabled /></td>
                                                    <td>
                                                        <select id="ddlIgst" style="margin-top: 20%;" name="QuotationType">
                                                            <option value="0"><a href="xyz" target="_blank">0%</a></option>
                                                            <option value="5"><a href="xyz" target="_blank">5%</a></option>
                                                            <option value="9"><a href="xyz" target="_blank">9%</a></option>
                                                            <option value="12"><a href="xyz" target="_blank">12%</a></option>
                                                            <option value="18"><a href="xyz" target="_blank">18%</a></option>
                                                            <option value="28"><a href="xyz" target="_blank">28%</a></option>
                                                        </select>
                                                    </td>

                                                    <td>
                                                        <input type="text" id="txtAmount" class="integer" /></td>

                                                    <td>
                                                        <select id="ddlSgst" style="margin-top: 20%;" name="QuotationType">
                                                            <option value="0"><a href="xyz" target="_blank">0%</a></option>
                                                            <option value="5"><a href="xyz" target="_blank">5%</a></option>
                                                            <option value="9"><a href="xyz" target="_blank">9%</a></option>
                                                            <option value="12"><a href="xyz" target="_blank">12%</a></option>
                                                            <option value="18"><a href="xyz" target="_blank">18%</a></option>
                                                            <option value="28"><a href="xyz" target="_blank">28%</a></option>
                                                        </select>
                                                    </td>

                                                    <td>
                                                        <input type="text" id="txtSgst" class="integer" /></td>

                                                    <td>
                                                        <select id="ddlCgst" style="margin-top: 20%;" name="QuotationType">
                                                            <option value="0"><a href="xyz" target="_blank">0%</a></option>
                                                            <option value="5"><a href="xyz" target="_blank">5%</a></option>
                                                            <option value="9"><a href="xyz" target="_blank">9%</a></option>
                                                            <option value="12"><a href="xyz" target="_blank">12%</a></option>
                                                            <option value="18"><a href="xyz" target="_blank">18%</a></option>
                                                            <option value="28"><a href="xyz" target="_blank">28%</a></option>
                                                        </select>
                                                    </td>

                                                    <td>
                                                        <input type="text" id="txtCgst" class="integer" disabled /></td>




                                                    <td>
                                                        <input type="text" id="txtTotalAmount" class="integer" disabled /></td>
                                                   
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtIgstAmount">Igst&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtIgstAmount" class="form-control" disabled />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtSgstAmount">Sgst&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtSgstAmount" class="form-control" disabled />

                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtCgstAmount">Cgst</label>
                                        <input type="text" id="txtCgstAmount" class="form-control" disabled />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtTaxableAmount">Taxable&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtTaxableAmount" class="form-control" disabled />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtFreight">Freight&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtFreight" class="form-control" disabled />

                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtGrandTotal">Total</label>
                                        <input type="text" id="txtGrandTotal" disabled class="form-control integer" />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-12 col-sm-12 col-xs-12 col-md-12">
                                        <label for="txtTotalWords">Total Words&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtTotalWords" disabled class="form-control" />
                                    </div>

                                </div>
                            </div>
                            <br />
                            <p>Bank Details</p>
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                        <label for="txtBankName">Bank&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtBankName" class="form-control" disabled />
                                    </div>
                                    <div class="form-group col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                        <label for="txtBranchName">Branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtBranchName" class="form-control" disabled />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-inline AppX">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                        <label for="txtBankAccountNo">Account&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtBankAccountNo" class="form-control" disabled />
                                    </div>
                                    <div class="form-group col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                        <label for="txtBranchIfsc">IFSC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input type="text" id="txtBranchIfsc" class="form-control" disabled />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <p><b>Terms And Conditions :</b></p>
                            <textarea class="form-control" rows="2" cols="2" id="txtTermsAndConditions" disabled></textarea>
                            <br />
                            <br />
                            <p><b>Note 1 :</b></p>
                            <textarea class="form-control" rows="2" cols="2" id="txtNote1" disabled></textarea>
                            <br />
                            <br />
                            <p><b>Note 2 :</b></p>
                            <textarea class="form-control" rows="2" cols="2" id="txtNote2" disabled></textarea>
                            <br />
                            <br />
                            <ul class="list-inline">
                                <li>
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <label for="txtSignatureDate" class="control-label">
                                                <b>
                                                    <label for="txtSignatureDate" class="control-label">Signature Date:</label></b></label>
                                            <div class='input-group date AppFormdatetimepicker' id='datetimepicker2'>
                                                <input type='text' class="form-control" id="txtSignatureDate" disable />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                            <input type="hidden" id="hdnPatientSignature" />
                        </div>
                    </div>
                </div>
            </div>


            <%--            New ends--%>

        </section>
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
                        element = element + '<tr>';
                        element = element + '<td>No Data Available</td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '<td></td>';
                        element = element + '</tr>';
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
        //function GetTOCDetails(QID) {
        //    var element = "";
        //    $("#tblCustomers > TBODY").empty();
        //    $.ajax({
        //        contentType: "application/json; charset=utf-8",
        //        url: "Approval.aspx/GetTOCDetails",
        //        type: "POST",
        //        data: "{QID:" + QID + "}",
        //        dataType: "json",
        //        success: function (result) {
        //            var getResult = result.d;
        //            var len = getResult.length;
        //            for (var i = 0; i < len; i++) {
        //                var a = getResult[i].DescriptionOfGoods;
        //                var b = getResult[i].Qty;
        //                var c = getResult[i].Hsn;
        //                var d = getResult[i].Rate;
        //                var e = getResult[i].Value;
        //                var f = getResult[i].Igst;
        //                var g = getResult[i].Amount;
        //                var h = getResult[i].TotalAmount1;
        //                btnAddCall(a, b, c, d, e, f, g, h);
        //            }
        //        },
        //        error: function (err) {
        //            //alert(err.statusText)
        //        }
        //    });
        //}
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
                        var a = getResult[i].ItemLineNumber;
                        var b = getResult[i].DescriptionOfGoods;
                        var c = getResult[i].Qty;
                        var d = getResult[i].Hsn;
                        var e = getResult[i].Rate;
                        var f = getResult[i].Value;
                        var g = getResult[i].Igst;
                        var h = getResult[i].IgstAmount;
                        var j = getResult[i].TotalAmount;
                        var k = getResult[i].ItemId;

                        var l = getResult[i].Sgst;
                        var m = getResult[i].SgstAmount;
                        var n = getResult[i].Cgst;
                        var o = getResult[i].CgstAmount;
                        btnAddCall(a, b, c, d, e, f, g, h, j, k, l, m, n, o);
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
                        $('#txtGstinNo').val(getResult[0].QNo),

                        $('#txtFinancialYear').val(getResult[0].FinantialYear),
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
                        $('#txtBankAccountNo').val(getResult[0].BankAccountNo),
                        $('#txtBranchIfsc').val(getResult[0].BankBranchIFSC),
                        $('#txtSignatureDate').val(GetProperDate(getResult[0].SignatureDate))
                        $('#txtDescriptionOdGoods').val(getResult[0].DescriptionOfGoods),
                        $('#txtQty').val(getResult[0].Quantity),
                        $('#txtHsn').val(getResult[0].HsnCode),
                        $('#txtRate').val(getResult[0].Rate),
                        $('#txtValue').val(getResult[0].Value),
                        $('#txtIgst').val(getResult[0].Igst),
                        $('#txtAmount').val(getResult[0].Amount),
                        $('#txtTotalAmount').val(getResult[0].TotalAmount)

                        $('#txtIgstAmount').val(getResult[0].IgstAmount),
                    $('#txtSgstAmount').val(getResult[0].SgstAmount),
                    $('#txtCgstAmount').val(getResult[0].CgstAmount),
                    $('#txtTermsAndCondition').val(getResult[0].TermsAndCondition),
                    $('#txtNote1').val(getResult[0].Note1)
                        $('#txtNote2').val(getResult[0].Note2)
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
        function btnAddCall(ItemLineNumber, DescriptionOfGoods, Qty, Hsn, Rate, Value, Igst, Amount, TotalAmount, ItemId, Sgst, SgstAmount, Cgst, CgstAmount) {
            var itellinenumber = ItemLineNumber;
            var txtDescriptionOfGoods = DescriptionOfGoods;
            var txtQty = Qty;
            var txtHsn = Hsn;
            var txtRate = Rate;
            var txtValue = Value;
            var txtIgst = Igst;
            var txtAmount = Amount;
            var txtTotalAmount = TotalAmount;

            var ddlSgst = Sgst;
            var txtSgst = SgstAmount;
            var ddlCgst = Cgst;
            var txtCgst = CgstAmount;




            var tBody = $("#tblCustomers > TBODY")[0];
            var row = tBody.insertRow(-1);
            var cell = $(row.insertCell(-1));
            cell.html(ItemLineNumber);
            cell = $(row.insertCell(-1));
            cell.html(DescriptionOfGoods);
            cell.attr('data-itemid', ItemId);
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

            //new entry
            cell = $(row.insertCell(-1));
            cell.html(Sgst);
            cell = $(row.insertCell(-1));
            cell.html(SgstAmount);

            cell = $(row.insertCell(-1));
            cell.html(Cgst);
            cell = $(row.insertCell(-1));
            cell.html(CgstAmount);
            //ends here
            cell = $(row.insertCell(-1));
            cell.html(TotalAmount);
          
        }



        //function btnAddCall(DescriptionOfGoods, Qty, Hsn, Rate, Value, Igst, Amount, TotalAmount1) {
        //    var txtDescriptionOfGoods = DescriptionOfGoods;//$("#txtDescriptionOfGoods");
        //    var txtQty = Qty;//$("#txtQty");
        //    var txtHsn = Hsn;//$("#txtHsn");
        //    var txtRate = Rate;//$("#txtRate");
        //    var txtValue = Value;//$("#txtValue");
        //    var txtIgst = Igst;//$("#txtIgst");
        //    var txtAmount = Amount;//$("#txtAmount");
        //    var txtTotalAmount1 = TotalAmount1;//$("#txtTotalAmount1");
        //    var tBody = $("#tblCustomers > TBODY")[0];
        //    var row = tBody.insertRow(-1);
        //    var cell = $(row.insertCell(-1));
        //    cell.html(DescriptionOfGoods);
        //    cell = $(row.insertCell(-1));
        //    cell.html(Qty);
        //    cell = $(row.insertCell(-1));
        //    cell.html(Hsn);
        //    cell = $(row.insertCell(-1));
        //    cell.html(Rate);
        //    cell = $(row.insertCell(-1));
        //    cell.html(Value);
        //    cell = $(row.insertCell(-1));
        //    cell.html(Igst);
        //    cell = $(row.insertCell(-1));
        //    cell.html(Amount);
        //    cell = $(row.insertCell(-1));
        //    cell.html(TotalAmount1);
        //}
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
    </script>
</asp:Content>
