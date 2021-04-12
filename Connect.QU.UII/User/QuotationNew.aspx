<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User/User.Master" CodeBehind="QuotationNew.aspx.cs" Inherits="Connect.QU.UII.User.QuotationNew" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/Admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="EAWarpper" runat="Server">

    <style>
        .selectBox {
            max-width: 187px;
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
    
    <%--    old code--%>

    <div class="container">

        <div class="row">
            <div class="col-md-12  col-lg-12 col-sm-12 col-xs-12">
                <div id="ApplicationForm">
                    <div class="text-right">
                        <div class="form-inline">

                            <div class="row">
                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4 text-justify">
                                    <select id="ddlCurrency" class="form-control"></select>
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
                                        <select id="ddlQGstinNoType" class="form-control" name="GstinNoType">
                                            <option value="07AAACC4708J1ZS"><a href="xyz" target="_blank">07AAACC4708J1ZS</a></option>
                                            <option value="07SKACC4708J12T"><a href="xyz" target="_blank">07SKACC4708J12T</a></option>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label id="QuotationNoText" for="txtQuotationNo">Quotation No</label>
                                        <input type="text" class="form-control" id="txtQuotationNo" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlQuotationType" id="QuotationTypeText">Quotation Type</label>
                                        <select id="ddlQuotationType" class="form-control" name="QuotationType">
                                            <option value="1"><a href="xyz" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SALE&nbsp;&nbsp;&nbsp;</a></option>
                                            <option value="2"><a href="xyz" target="_blank">&nbsp;&nbsp;&nbsp;SERVICE&nbsp;&nbsp;&nbsp;</a></option>
                                            <option value="3"><a href="xyz" target="_blank">&nbsp;&nbsp;&nbsp;TENDER&nbsp;&nbsp;&nbsp;</a></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </p>
                        <p>
                            <div class="form-inline">
                                <div class="row">
                                    <div class="form-group col-lg-12 col-sm-12 col-xs-12 col-md-12">
                                        <input type="buttton" id="btnExportToPdf" value="Export" class="btn btn-sm btn-success" />
                                    </div>
                                </div>
                            </div>
                        </p>
                        <hr class="HR2App" />
                    </div>
                    <div class="AppFormBody">
                        <div id="watermark" style="margin-left: 30%;">
                            <p>Connect</p>
                            <p>Compusys</p>
                            <p>Pvt</p>
                            <p>Ltd</p>
                        </div>
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
                                        <input type="text" id="txtProjectName" class="form-control" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtFinancialYear">Financial Year</label>
                                        <input type='text' class="form-control" id="txtFinancialYear" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtQuotationDate">Date:</label><b />
                                        <div class='input-group date AppFormdatetimepicker' id='datetimepicker3'>
                                            <input type='text' class="form-control" id="txtQuotationDate" />
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
                                    <select id="ddlCompanyId" style="    width: 100% !important;" name="ddlCompanyName" class=" form-control"></select>
                                </div>
                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                    <label for="ddlCompanyLocationId">Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                    <select id="ddlCompanyLocationId" style="    width: 100% !important;" name="ddlCompanyLocation" class=" form-control">
                                        <option value="0">------------Select------------</option>

                                    </select>
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
                                    <input type="text" id="txtValidityOfQuote" class="form-control" />
                                </div>
                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                    <label for="txtPaymentTerms">Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                    <input type="text" id="txtPaymentTerms" class="form-control" />

                                </div>
                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                    <label for="txtPlaceOfSupply">Place</label>
                                    <input type="text" id="txtPlaceOfSupply" class="form-control" />
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
                                                <th></th>
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
                                                    <input type="text" id="txtQty" class="integer" /></td>
                                                <td>
                                                    <input type="text" id="txtHsn" disabled /></td>
                                                <td>
                                                    <input type="text" id="txtRate" class="integer" /></td>
                                                <td>
                                                    <input type="text" id="txtValue" class="integer" /></td>
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
                                                    <input type="text" id="txtCgst" class="integer" /></td>




                                                <td>
                                                    <input type="text" id="txtTotalAmount" class="integer" /></td>
                                                <td>
                                                    <input type="button" id="btnAdd" value="Add" /></td>
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
                                    <input type="text" id="txtFreight" class="form-control" />

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
                        <textarea class="form-control" rows="2" cols="2" id="txtTermsAndConditions"></textarea>
                        <br />
                        <br />
                        <p><b>Note 1 :</b></p>
                        <textarea class="form-control" rows="2" cols="2" id="txtNotes1"></textarea>
                        <br />
                        <br />
                        <p><b>Note 2 :</b></p>
                        <textarea class="form-control" rows="2" cols="2" id="txtNotes2"></textarea>
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
                                            <input type='text' class="form-control" id="txtSignatureDate" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <p class="text-center">
                            <button type="button" id="btnClear" class="btn btn-info">Clear</button>
                            <button type="button" id="btnSave" class="btn btn-success">Save</button>
                            <button type="button" id="btnUpdate" class="btn btn-primary">Update</button>
                        </p>
                        <input type="hidden" id="hdnPatientSignature" />
                    </div>
                </div>
            </div>
        </div>



           <div class="row">

                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                   <table id="CityTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable" ></table>
                </div>
            </div>

    </div>

    <%--    old code ends--%>

    <div class="container">
    </div>
  <%--  <div class="container" style="margin-top: 5%; margin-bottom: 1%; width: 100%;">
        <table id="CityTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable" style="table-layout: fixed"></table>
    </div>--%>

  



    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
    <input id="hidHotelId" type="hidden" />
    <input id="hidApproved" type="hidden" />
    <input id="hidRevisionCount" type="hidden" />

    <div class="container" style="width: 70%;">
        <div class="container" id="DivPage2" style="display: block;">
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
        var dropArr = new Array();
        $(document).ready(function () {
            //$('.integer').keyup(function (e) {
            //    if (/\D/g.test(this.value)) {
            //        this.value = this.value.replace(/\D/g, '');
            //    }
            //});
            $("#btnUpdate").hide();
            $("#btnSave").show();
            //$('#btnExportToPdf').prop('disabled', true);
            var data = {};
            $('#ddlApplicationType').change(function () {
                if ($('#ddlApplicationType').val() == 0) {
                    $('#QuotationNoText').text("Quotation No");
                    $('#QuotationTypeText').text("Quotation Type");
                    $('#QuotationApplicationText').text("QUOTATION APPLICATION");
                }
                else {
                    $('#QuotationNoText').text("PO No");
                    $('#QuotationTypeText').text("PO Type");
                    $('#QuotationApplicationText').text("PURCHASE ORDER APPLICATION");
                }
            });
            $('#ddlCompanyId').change(function () {
                if ($('#ddlCompanyId').val() == 0) {

                }
                else {
                    GetCompanyLocations($('#ddlCompanyId').val());
                    GetCompanyDataDetails($('#ddlCompanyId').val(), "");
                }
            });
            $('#ddlItem').change(function () {
                if ($('#ddlItem').val() == 0) {

                }
                else {
                    GetItemDataDetails($('#ddlItem').val(), "");
                }
            });
            $('#txtGrandTotal').change(function () {
                $('#txtTotalWords').val(numberToWords($('#txtGrandTotal').val()));
            });
            $('#txtRate,#txtQty,#txtValue').change(function () {
                var a = 1;
                if ($('#txtQty').val() != "") {
                    a = parseInt($('#txtQty').val());
                }
                var b = parseInt($('#txtRate').val());
                var c = a * b;
                $('#txtValue').val(c);
            });




            $('#ddlIgst,#ddlSgst,#ddlCgst,#txtAmount,#txtValue,#txtRate,#txtQty').change(function () {
                var igstTax = parseInt($('#ddlIgst').val());
                var sgstTax = parseInt($('#ddlSgst').val());
                var cgstTax = parseInt($('#ddlCgst').val());

                var totalRate = parseInt($('#txtValue').val());
                var z = totalRate * (igstTax / 100);
                $('#txtAmount').val(z.toFixed(2));


                var totalRate1 = parseInt($('#txtValue').val());
                var z1 = totalRate1 * (sgstTax / 100);
                $('#txtSgst').val(z1.toFixed(2));


                var totalRate2 = parseInt($('#txtValue').val());
                var z2 = totalRate2 * (cgstTax / 100);
                $('#txtCgst').val(z2.toFixed(2));




            });
            $('#txtTotalAmount,#ddlIgst,#ddlSgst,#ddlCgst,#txtAmount,#txtValue,#txtRate,#txtQty').change(function () {
                var igstTaxValue = parseInt($('#txtAmount').val());
                var sgstTaxValue = parseInt($('#txtSgst').val());
                var cgstTaxValue = parseInt($('#txtCgst').val());
                var Value = parseInt($('#txtValue').val());
                var z = igstTaxValue + Value + sgstTaxValue + cgstTaxValue;
                $('#txtTotalAmount').val(z.toFixed(2));
            });





            $('#txtFinancialYear').datepicker({
                format: "yyyy",
                viewMode: "years",
                minViewMode: "years"
            });
            var lastValue = '';
            setInterval(function () {
                if ($("#txtFinancialYear").val() != lastValue) {
                    var yearVal = parseInt($('#txtFinancialYear').val());
                    var x = yearVal + 1;
                    lastValue = yearVal + "-" + x;
                    $('#txtFinancialYear').val(lastValue);
                }
            });
            var CounterSno = 0;
            $('#btnExportToPdf').on('click', function () {
                debugger;
                QID = $('#hidHotelId').val();
                if (QID == "") {
                    alert("Please Select Any Quotation for Export")
                    return false;
                }
                $.ajax({
                    contentType: "application/json; charset=utf-8",
                    url: "Quotation.aspx/ExportToPDF",
                    type: "POST",
                    data: "{QID:" + QID + "}",
                    dataType: "json",
                    success: function (result) {
                        var bytes = Base64ToBytes(result.d);
                        var blob = new Blob([bytes], { type: "application/octetstream" });
                        var isIE = false || !!document.documentMode;
                        if (isIE) {
                            window.navigator.msSaveBlob(blob, 'QuotationData' + new Date(Date.now()) + '.pdf');
                        } else {
                            var url = window.URL || window.webkitURL;
                            link = url.createObjectURL(blob);
                            var a = $("<a />");
                            a.attr("download", 'QuotationData' + new Date(Date.now()) + '.pdf');
                            a.attr("href", link);
                            $("body").append(a);
                            a[0].click();
                            // $("body").remove(a);
                        }
                    },
                    error: function (err) {
                        return;
                    }
                });
            });
            function Base64ToBytes(base64) {
                var s = window.atob(base64);
                var bytes = new Uint8Array(s.length);
                for (var i = 0; i < s.length; i++) {
                    bytes[i] = s.charCodeAt(i);
                }
                return bytes;
            };
            $("body").on("click", "#btnAdd", function () {
                dropArr.push(parseInt($("#ddlItem option:selected").attr('data-itemid')));
                CounterSno = CounterSno + 10;
                var validations = Validation_TOCQuotation(
                "#ddlItem",
                "#txtQty",
                "#txtRate",
                "#txtValue",
                "#txtTotalAmount");
                if (validations) {
                }
                else {
                    return false;
                }
                var txtDescriptionOfGoods = $("#ddlItem option:selected").text();
                var txtQty = $("#txtQty");
                var txtHsn = $("#txtHsn");
                var txtRate = $("#txtRate");
                var txtValue = $("#txtValue");
                var txtIgst = $("#ddlIgst");   //ddl pravesh
                var txtIgstAmount = $("#txtAmount");
                //new fields
                var txtSgst = $("#ddlSgst");   //ddl pravesh
                var txtSgstAmount = $("#txtSgst");
                var txtCgst = $("#ddlCgst");   //ddl pravesh
                var txtCgstAmount = $("#txtCgst");

                //ends here
                var txtTotalAmount = $("#txtTotalAmount");
                var tBody = $("#tblCustomers > TBODY")[0];
                var row = tBody.insertRow(-1);
                var cell = $(row.insertCell(-1));
                cell.html(CounterSno);
                var cell = $(row.insertCell(-1));
                cell.html(txtDescriptionOfGoods);
                cell.attr('data-itemid', $("#ddlItem option:selected").attr('data-itemid'));
                cell = $(row.insertCell(-1));
                cell.html(txtQty.val());
                cell = $(row.insertCell(-1));
                cell.html(txtHsn.val());
                cell = $(row.insertCell(-1));
                cell.html(txtRate.val());
                cell = $(row.insertCell(-1));
                cell.html(txtValue.val());
                cell = $(row.insertCell(-1));
                cell.html(txtIgst.val());
                cell = $(row.insertCell(-1));
                cell.html(txtIgstAmount.val());

                //new fields
                cell = $(row.insertCell(-1));
                cell.html(txtSgst.val());
                cell = $(row.insertCell(-1));
                cell.html(txtSgstAmount.val());
                cell = $(row.insertCell(-1));
                cell.html(txtCgst.val());
                cell = $(row.insertCell(-1));
                cell.html(txtCgstAmount.val());
                //ends here



                cell = $(row.insertCell(-1));
                cell.html(txtTotalAmount.val());
                funRecalculateAfterAdding(txtTotalAmount.val(), txtIgstAmount.val(), txtValue.val(), txtSgstAmount.val(), txtCgstAmount.val());
                cell = $(row.insertCell(-1));
                var btnRemove = $("<input />");
                btnRemove.attr("type", "button");
                btnRemove.attr("onclick", "Remove(this);");
                btnRemove.val("Remove");
                cell.append(btnRemove);
                $("#ddlItem option").prop("selected", false);
                txtQty.val("");
                txtHsn.val("");
                txtRate.val("");
                txtValue.val("");
                txtIgst.val("");
                txtIgstAmount.val("");

                txtSgst.val("");
                txtSgstAmount.val("");
                txtCgst.val("");
                txtCgstAmount.val("");

                txtTotalAmount.val("");
                GetItemDetails(0, "");
            });
            GetCurrencyDetails(0, "");
            GetCompanyDetails(0, "");
            GetItemDetails(0, "");
            GetQuotationDetailsOnQuotationType(1);
            $('#txtQuotationNo').val("CCPL/2019-2020/SU000" + Math.floor((Math.random() * 100) + 1));
            GetQuotationDetails(0);
            var xTotalAmount = 0; //, xTotalQty=0;
            $("#btnTotal").on("click", function (e) {
                xTotalAmount = 0;
                for (var i = 1; i <= $(".totalAmt").length; i++) {
                    xTotalAmount = xTotalAmount + parseInt(($("#txtAmt" + i).val() != "") ? $("#txtAmt" + i).val() : 0);
                }
                if (isNaN(xTotalAmount)) {
                    $('#txtTotalAmount').val();
                }
                else
                    $('#txtTotalAmount').val(xTotalAmount);
            });
            $(function () {
                $('#datetimepicker3').datetimepicker({ defaultDate: new Date() });
                $('#datetimepicker2').datetimepicker({ defaultDate: new Date() });
            });
            function isNumber(evt) {
                evt = (evt) ? evt : window.event;
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode < 46 || charCode >= 58 || charCode == 47) {
                    return false;
                }
                return true;
            }
            function myFunction(eve) {
                if ($(eve).val() == 1) {
                    $('#txtHandoutText').show();
                }
                else {
                    $('#txtHandoutText').hide();
                }
            }
            $("#btnSave").click(function () {
                var validations = Validation_Quotation(
              "#txtProjectName",
              "#txtFinancialYear",
              "#txtQuotationDate",
              "#ddlCompanyId", //ddl
              "#txtPlaceOfSupply",
              "#txtTaxableAmount",
              "#txtTotalWords",
              "#txtGrandTotal",
              "#txtTermsAndConditions",
              "#txtSignatureDate",
              "#ddlCurrency", //currency
              "#ddlCompanyLocationId"); //locationid
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 1;
                data.QID = 0;//QID Pravesh
                data.ApplicationType = $('#ddlApplicationType').val();
                data.ApplicationReference = "0";
                data.QFromGSTINNo = $("#ddlQGstinNoType option:selected").text();//
                data.QuotationType = $('#ddlQuotationType').val();
                data.QNo = $('#txtQuotationNo').val();
                data.QType = $('#ddlQuotationType').val();
                data.QDate = $('#txtQuotationDate').val();
                data.ProjectName = $('#txtProjectName').val();
                data.FinantialYear = $('#txtFinancialYear').val();
                data.QToCompanyID = $('#ddlCompanyId option:selected').val();
                data.QToCompanyName = $('#ddlCompanyId option:selected').text();//$('#txtCompanyName').val();
                data.QToGSTINNo = $('#txtGstinParty').val();
                data.QToContactPerson = $('#txtContactPerson').val();
                data.QToEmailID = $('#txtCompanyEmailId').val();
                data.QToAddress = $('#txtAddress').val();
                data.PaymentTerms = $('#txtPaymentTerms').val();
                data.ValidityOfQuote = $('#txtValidityOfQuote').val();
                data.PlaceOfSupply = $('#txtPlaceOfSupply').val();
                data.TotalAmountDigit = $('#txtGrandTotal').val();
                data.TotalAmountWords = $('#txtTotalWords').val();
                data.TaxableAmount = $('#txtTaxableAmount').val();
                data.IgstAmount = $('#txtIgstAmount').val();
                data.SgstAmount = $('#txtSgstAmount').val();
                data.CgstAmount = $('#txtCgstAmount').val();
                data.Freight = $('#txtFreight').val();
                data.BankName = $('#txtBankName').val();
                data.BranchName = $('#txtBranchName').val();
                data.BankAccountNo = $('#txtBankAccountNo').val();
                data.BankBranchIFSC = $('#txtBranchIfsc').val();
                data.TermsAndCondition = $('#txtTermsAndConditions').val();
                data.Note1 = $('#txtNotes1').val();
                data.Note2 = $('#txtNotes2').val();
                data.SignatureDate = $('#txtSignatureDate').val();
                data.CurrencyId = $('#ddlCurrency option:selected').val();
                data.LocationId = $('#ddlCompanyLocationId option:selected').val();
                SaveUpdateQuotationDetails(data);
                GetQuotationDetails(0);
            });
            $("#btnUpdate").click(function () {
                var validations = Validation_Quotation(
              "#txtProjectName",
              "#txtFinancialYear",
              "#txtQuotationDate",
              "#ddlCompanyId", //ddl
              "#txtPlaceOfSupply",
              "#txtTaxableAmount",
              "#txtTotalWords",
              "#txtGrandTotal",
              "#txtTermsAndConditions",
              "#txtSignatureDate",
              "#ddlCurrency", //currency
              "#ddlCompanyLocationId"); //locationid
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 2;
                data.QID = $('#hidHotelId').val();
                data.ApplicationType = $('#ddlApplicationType').val();
                data.ApplicationReference = "0";
                data.FormType = $('#ddlPageType').val();
                data.QFromGSTINNo = $("#ddlQGstinNoType option:selected").text();//
                data.QuotationType = $('#ddlQuotationType').val();
                data.QNo = $('#txtQuotationNo').val();
                data.QType = $('#ddlQuotationType').val();
                data.QDate = $('#txtQuotationDate').val();
                data.ProjectName = $('#txtProjectName').val();
                data.FinantialYear = $('#txtFinancialYear').val();
                data.QToCompanyID = $('#ddlCompanyId option:selected').val();
                data.QToCompanyName = $('#ddlCompanyId option:selected').text();//$('#txtCompanyName').val();
                data.QToGSTINNo = $('#txtGstinParty').val();
                data.QToContactPerson = $('#txtContactPerson').val();
                data.QToEmailID = $('#txtCompanyEmailId').val();
                data.QToAddress = $('#txtAddress').val();
                data.PaymentTerms = $('#txtPaymentTerms').val();
                data.ValidityOfQuote = $('#txtValidityOfQuote').val();
                data.PlaceOfSupply = $('#txtPlaceOfSupply').val();
                data.TotalAmountDigit = $('#txtGrandTotal').val();
                data.TotalAmountWords = $('#txtTotalWords').val();
                data.TaxableAmount = $('#txtTaxableAmount').val();
                data.IgstAmount = $('#txtIgstAmount').val();
                data.SgstAmount = $('#txtSgstAmount').val();
                data.CgstAmount = $('#txtCgstAmount').val();
                data.Freight = $('#txtFreight').val();
                data.BankName = $('#txtBankName').val();
                data.BranchName = $('#txtBranchName').val();
                data.BankAccountNo = $('#txtBankAccountNo').val();
                data.BankBranchIFSC = $('#txtBranchIfsc').val();
                data.TermsAndCondition = $('#txtTermsAndConditions').val();
                data.Note1 = $('#txtNotes1').val();
                data.Note2 = $('#txtNotes2').val();
                data.SignatureDate = $('#txtSignatureDate').val();
                data.CurrencyId = $('#ddlCurrency option:selected').val();
                data.LocationId = $('#ddlCompanyLocationId option:selected').val();
                data.Approved = $('#hidApproved').val();
                data.RevisionCount = $('#hidRevisionCount').val();
                SaveUpdateQuotationDetails(data);
                GetQuotationDetails(0);

            });
            $("#btnClear").click(function () {
                ClearInputBoxValues();
                GetQuotationDetailsOnQuotationType(1);
            });
            $('#ddlQuotationType').change(function () {
                if ($('#ddlQuotationType').val() == 1) {
                    GetQuotationDetailsOnQuotationType(1);
                }
                else if ($('#ddlQuotationType').val() == 2) {
                    GetQuotationDetailsOnQuotationType(2);
                }
                else {
                    GetQuotationDetailsOnQuotationType(3);
                }
            });
        });
        //Calculations Starts here
        function funTotalAmount(val, taxIgstVal) {
            $('#txtIgstAmount').val(parseFloat(taxIgstVal).toFixed(2));
            $('#txtGrandTotal').val(parseFloat(val).toFixed(2)); //pravesh
            $('#txtTotalWords').val(numberToWords(val));
        }
        function funRecalculateAfterAdding(amount, Igsttax, totalwithouttax, SgstTax, CgstTax) {
            var TotalAmount = 0;
            if (!isNaN(amount)) {
                TotalAmount = amount;
            }
            if ($('#txtGrandTotal').val() != "") {
                TotalAmount = parseInt($('#txtGrandTotal').val());
            }
            var AddedAmount = parseInt(amount);
            var NewAmount = TotalAmount + AddedAmount;
            $('#txtGrandTotal').val(parseFloat(NewAmount).toFixed(2));
            $('#txtTotalWords').val(numberToWords(NewAmount));

            //Igst tax
            var TotalIgstTax = 0;
            if ($('#txtIgstAmount').val() != "") {
                TotalIgstTax = parseInt($('#txtIgstAmount').val());
            }
            var AddedIgstTax = parseInt(Igsttax);
            var NewIgstTax = AddedIgstTax + TotalIgstTax;
            $('#txtIgstAmount').val(parseFloat(NewIgstTax).toFixed(2));


            //Total without tax
            var TotalWithoutTax = 0;
            if ($('#txtTaxableAmount').val() != "") {
                TotalWithoutTax = parseInt($('#txtTaxableAmount').val());
            }
            var AddedWithoutTax = parseInt(totalwithouttax);
            var NewWithoutTax = AddedWithoutTax + TotalWithoutTax;
            $('#txtTaxableAmount').val(parseFloat(NewWithoutTax).toFixed(2));


            //Sgst tax
            var TotalSgstTax = 0;
            if ($('#txtSgstAmount').val() != "") {
                TotalSgstTax = parseInt($('#txtSgstAmount').val());
            }
            var AddedSgstTax = parseInt(SgstTax);
            var NewSgstTax = AddedSgstTax + TotalSgstTax;
            $('#txtSgstAmount').val(parseFloat(NewSgstTax).toFixed(2));


            //Cgst tax
            var TotalCgstTax = 0;
            if ($('#txtCgstAmount').val() != "") {
                TotalCgstTax = parseInt($('#txtCgstAmount').val());
            }
            var AddedCgstTax = parseInt(CgstTax);
            var NewCgstTax = AddedCgstTax + TotalCgstTax;
            $('#txtCgstAmount').val(parseFloat(NewCgstTax).toFixed(2));

        }
        function funRecalculateAfterRemoving(amount, Igsttax, totalwithouttax, sgsttax, cgsttax) {
            var TotalAmount = 0;
            if ($('#txtGrandTotal').val() != "") {
                TotalAmount = parseInt($('#txtGrandTotal').val());
            }
            var RemovedAmount = parseInt(amount);
            var NewAmount = TotalAmount - RemovedAmount;
            $('#txtGrandTotal').val(parseFloat(NewAmount).toFixed(2));
            $('#txtTotalWords').val(numberToWords(NewAmount));

            //igst tax
            var TotalIgstTax = 0;
            if ($('#txtIgstAmount').val() != "") {
                TotalIgstTax = parseInt($('#txtIgstAmount').val());
            }
            var RemovedIgstTax = parseInt(Igsttax);
            var NewIgstTax = TotalIgstTax - RemovedIgstTax;
            $('#txtIgstAmount').val(parseFloat(NewIgstTax).toFixed(2));

            //Total Without Tax
            var TotalWithoutTax = 0;
            if ($('#txtTaxableAmount').val() != "") {
                TotalWithoutTax = parseInt($('#txtTaxableAmount').val());
            }
            var RemovedWithoutTax = parseInt(totalwithouttax);
            var NewWithoutTax = TotalWithoutTax - RemovedWithoutTax;
            $('#txtTaxableAmount').val(parseFloat(NewWithoutTax).toFixed(2));

            //sgst tax
            var TotalSgstTax = 0;
            if ($('#txtSgstAmount').val() != "") {
                TotalSgstTax = parseInt($('#txtSgstAmount').val());
            }
            var RemovedSgstTax = parseInt(sgsttax);
            var NewSgstTax = TotalSgstTax - RemovedSgstTax;
            $('#txtSgstAmount').val(parseFloat(NewSgstTax).toFixed(2));


            //cgst tax
            var TotalCgstTax = 0;
            if ($('#txtCgstAmount').val() != "") {
                TotalCgstTax = parseInt($('#txtCgstAmount').val());
            }
            var RemovedCgstTax = parseInt(cgsttax);
            var NewCgstTax = TotalCgstTax - RemovedCgstTax;
            $('#txtCgstAmount').val(parseFloat(NewCgstTax).toFixed(2));


        }
        //Calculations Ends here



        function EmailQuotationDetails(QID, FromEmailId, ToEmailId) {
            var EmailId = "pravesh.kr01@gmail.com";
            var Name = "Pravesh";
            var Title = "Quotation";
            var id = QID;
            $.ajax({
                type: "POST",
                url: "Quotation.aspx/EmailQuotationDetails",
                data: JSON.stringify({ 'FromEmailId': FromEmailId, 'ToEmailId': ToEmailId, 'Name': Name, 'Title': Title, 'ID': id }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    alert("Quotation details sent successfully");
                },
                error: function (respnse) {
                    // alert(respnse + " wrng");
                }
            });
        }
        function Remove(button) {
            var row = $(button).closest("TR");
            funRecalculateAfterRemoving(row[0].cells[12].innerText, row[0].cells[7].innerText, row[0].cells[5].innerText, row[0].cells[9].innerText, row[0].cells[11].innerText);
            var x = row[0].cells[1].getAttribute('data-itemid');
            // var name = $("TD", row).eq(0).html();
            if (confirm("Do you want to delete the ROw ")) {
                dropArr.splice($.inArray((parseInt(x)), dropArr), 1);
                var table = $("#tblCustomers")[0];
                table.deleteRow(row[0].rowIndex);
                GetItemDetails(0, "");
            }
        };
        function GetCurrencyDetails(CurrencyId, CurrencyName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetCurrencyDetails",
                type: "POST",
                data: "{CurrencyId:" + CurrencyId + ",CurrencyName:'" + CurrencyName + "'}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCurrency").empty();
                    $("#ddlCurrency").append('<option value="0">Select</option>');
                    for (var i = 0; i < len; i++) {
                        $("#ddlCurrency").append('<option value=' + getResult[i].CurrencyId + '>' + getResult[i].CurrencyName + '</option>');
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function SaveUpdateQuotationDetails(data) {
            var tocArr = new Array();
            $("#tblCustomers TBODY TR").each(function () {
                var row = $(this);
                var TOC = {};
                TOC.ItemLineNumber = row.find("TD").eq(0).html();
                TOC.DescriptionOfGoods = row.find("TD").eq(1).html();
                TOC.ItemId = row.find("TD").eq(1).attr('data-itemid');
                TOC.Qty = row.find("TD").eq(2).html();
                TOC.Hsn = row.find("TD").eq(3).html();
                TOC.Rate = row.find("TD").eq(4).html();
                TOC.Value = row.find("TD").eq(5).html();
                TOC.Igst = row.find("TD").eq(6).html();
                TOC.IgstAmount = row.find("TD").eq(7).html();
                TOC.Sgst = row.find("TD").eq(8).html();
                TOC.SgstAmount = row.find("TD").eq(9).html();
                TOC.Cgst = row.find("TD").eq(10).html();
                TOC.CgstAmount = row.find("TD").eq(11).html();
                TOC.TotalAmount = row.find("TD").eq(12).html();
                tocArr.push(TOC);
            });
            data.TableOfContent = tocArr;
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/SaveUpdateQuotationDetails",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        ClearInputBoxValues();

                        //
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
        function GetQuotationDetails(QID) {
            var element = "";
            var Counter = 1;
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetQuotationDetails",
                type: "POST",
                data: "{QID:" + QID + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#CityTableId').empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th style="width:59px">S NO</th>';
                    element = element + '<th style="width:160px">Q NO</th>';
                    element = element + '<th>Q Type</th>';
                    element = element + '<th>Q From</th>';
                    element = element + '<th>Q To</th>';
                    element = element + '<th>Date</th>';
                    element = element + '<th style="width:85px">Approval</th>';
                    element = element + '<th style="width:80px">Action</th>';
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
                        element = element + '<td></td>';
                        element = element + '</tr>';
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + Counter++ + '</td>';
                        element = element + '<td>' + getResult[i].QNo + '</td>';
                        if (getResult[i].QType == "1") {
                            element = element + '<td>SU</td>';

                        }
                        else if (getResult[i].QType == "2") {
                            element = element + '<td>SER</td>';

                        }
                        else {
                            element = element + '<td>TEN</td>';

                        }
                        element = element + '<td>CCPL</td>';
                        element = element + '<td>' + getResult[i].QToCompanyName + '</td>';
                        element = element + '<td>' + GetProperDate(getResult[i].QDate) + '</td>';
                        //if (!getResult[i].Approved) {

                        //    element = element + '<td>' + '<input type="checkbox" disabled name="Approve"   id="chkApprove" />';
                        //    element = element + '<td><a href="#"><span class="label label-warning" onclick="GetQuotationDetailsForUpdate(' + getResult[i].QID + ',' + getResult[i].ApplicationType + ',\'' + getResult[i].ApplicationReference + '\',' + getResult[i].QType + ',\'' + getResult[i].QNo + '\',\'' + GetProperDate(getResult[i].QDate) + '\',\'' + getResult[i].ProjectName + '\',\'' + getResult[i].FinantialYear + '\',\'' + getResult[i].QToCompanyName + '\',\'' + getResult[i].QToGSTINNo + '\',\'' + getResult[i].QToContactPerson + '\',\'' + getResult[i].QToEmailID + '\',\'' + getResult[i].QToAddress + '\',\'' + getResult[i].PaymentTerms + '\',\'' + getResult[i].ValidityOfQuote + '\',\'' + getResult[i].PlaceOfSupply + '\',\'' + getResult[i].TotalAmountDigit + '\',\'' + getResult[i].TotalAmountWords + '\',\'' + getResult[i].TaxableAmount + '\',\'' + getResult[i].IgstAmount + '\',\'' + getResult[i].SgstAmount + '\',\'' + getResult[i].CgstAmount + '\',\'' + getResult[i].Freight + '\',\'' + getResult[i].BankName + '\',\'' + getResult[i].BranchName + '\',\'' + getResult[i].BankBranchIFSC + '\',\'' + getResult[i].BankAccountNo + '\',\'' + getResult[i].TermsAndCondition + '\',\'' + getResult[i].Note1 + '\',\'' + getResult[i].Note2 + '\' ,\'' + GetProperDate(getResult[i].SignatureDate) + '\',' + getResult[i].CurrencyId + ',' + getResult[i].LocationId + ',' + getResult[i].QToCompanyID + ',\'' + getResult[i].QFromGSTINNo + '\'); return false;" ><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>'
                        //}
                        //else {
                        //    element = element + '<td>' + '<input type="checkbox" disabled checked name="Approve" id="chkApprove" />';
                        //    element = element + '<td><a href="#" ><span class="label label-success"   onclick="EmailQuotationDetails(' + getResult[i].QID + ',\'' + getResult[i].QFromEmailID + '\',\'' + getResult[i].QToEmailID + '\'); return false;"><i class="fa fa-print"  aria-hidden="true"></i>   Send</span></a></td>'
                        //}

                        if (!getResult[i].Approved) {




                            element = element + '<td>' + '<input type="checkbox" disabled name="Approve"   id="chkApprove" />';
                            //                            element = element + '<td><a href="#"><span class="label label-warning" onclick="GetQuotationDetailsForUpdate(' + getResult[i].QID + ',' + getResult[i].ApplicationType + ',\'' + getResult[i].ApplicationReference + '\',' + getResult[i].QType + ',\'' + getResult[i].QNo + '\',\'' + GetProperDate(getResult[i].QDate) + '\',\'' + getResult[i].ProjectName + '\',\'' + getResult[i].FinantialYear + '\',\'' + getResult[i].QToCompanyName + '\',\'' + getResult[i].QToGSTINNo + '\',\'' + getResult[i].QToContactPerson + '\',\'' + getResult[i].QToEmailID + '\',\'' + getResult[i].QToAddress + '\',\'' + getResult[i].PaymentTerms + '\',\'' + getResult[i].ValidityOfQuote + '\',\'' + getResult[i].PlaceOfSupply + '\',\'' + getResult[i].TotalAmountDigit + '\',\'' + getResult[i].TotalAmountWords + '\',\'' + getResult[i].TaxableAmount + '\',\'' + getResult[i].IgstAmount + '\',\'' + getResult[i].SgstAmount + '\',\'' + getResult[i].CgstAmount + '\',\'' + getResult[i].Freight + '\',\'' + getResult[i].BankName + '\',\'' + getResult[i].BranchName + '\',\'' + getResult[i].BankBranchIFSC + '\',\'' + getResult[i].BankAccountNo + '\',\'' + getResult[i].TermsAndCondition + '\',\'' + getResult[i].Note1 + '\',\'' + getResult[i].Note2 + '\' ,\'' + GetProperDate(getResult[i].SignatureDate) + '\',' + getResult[i].CurrencyId + ',' + getResult[i].LocationId + ',' + getResult[i].QToCompanyID + ',\'' + getResult[i].QFromGSTINNo + '\'); return false;" ><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>'
                            element = element + '<td><a href="#"><span class="label label-warning" onclick="GetQuotationDetailsForUpdate(' + getResult[i].QID + ',' + getResult[i].ApplicationType + ',\'' + getResult[i].ApplicationReference + '\',' + getResult[i].QType + ',\'' + getResult[i].QNo + '\',\'' + GetProperDate(getResult[i].QDate) + '\',\'' + getResult[i].ProjectName + '\',\'' + getResult[i].FinantialYear + '\',\'' + getResult[i].QToCompanyName + '\',\'' + getResult[i].QToGSTINNo + '\',\'' + getResult[i].QToContactPerson + '\',\'' + getResult[i].QToEmailID + '\',\'' + getResult[i].QToAddress + '\',\'' + getResult[i].PaymentTerms + '\',\'' + getResult[i].ValidityOfQuote + '\',\'' + getResult[i].PlaceOfSupply + '\',\'' + getResult[i].TotalAmountDigit + '\',\'' + getResult[i].TotalAmountWords + '\',\'' + getResult[i].TaxableAmount + '\',\'' + getResult[i].IgstAmount + '\',\'' + getResult[i].SgstAmount + '\',\'' + getResult[i].CgstAmount + '\',\'' + getResult[i].Freight + '\',\'' + getResult[i].BankName + '\',\'' + getResult[i].BranchName + '\',\'' + getResult[i].BankBranchIFSC + '\',\'' + getResult[i].BankAccountNo + '\',\'' + getResult[i].TermsAndCondition + '\',\'' + getResult[i].Note1 + '\',\'' + getResult[i].Note2 + '\' ,\'' + GetProperDate(getResult[i].SignatureDate) + '\',' + getResult[i].CurrencyId + ',' + getResult[i].LocationId + ',' + getResult[i].QToCompanyID + ',\'' + getResult[i].QFromGSTINNo + '\',\'' + getResult[i].Approved + '\',' + getResult[i].RevisionCount + '); return false;" ><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>'

                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" disabled checked name="Approve" id="chkApprove" />';
                            element = element + '<td><a href="#" ><span class="label label-success"   onclick="EmailQuotationDetails(' + getResult[i].QID + ',\'' + getResult[i].QFromEmailID + '\',\'' + getResult[i].QToEmailID + '\'); return false;"><i class="fa fa-print"  aria-hidden="true"></i>   Send</span></a><a href="#"><span class="label label-warning" onclick="GetQuotationDetailsForUpdate(' + getResult[i].QID + ',' + getResult[i].ApplicationType + ',\'' + getResult[i].ApplicationReference + '\',' + getResult[i].QType + ',\'' + getResult[i].QNo + '\',\'' + GetProperDate(getResult[i].QDate) + '\',\'' + getResult[i].ProjectName + '\',\'' + getResult[i].FinantialYear + '\',\'' + getResult[i].QToCompanyName + '\',\'' + getResult[i].QToGSTINNo + '\',\'' + getResult[i].QToContactPerson + '\',\'' + getResult[i].QToEmailID + '\',\'' + getResult[i].QToAddress + '\',\'' + getResult[i].PaymentTerms + '\',\'' + getResult[i].ValidityOfQuote + '\',\'' + getResult[i].PlaceOfSupply + '\',\'' + getResult[i].TotalAmountDigit + '\',\'' + getResult[i].TotalAmountWords + '\',\'' + getResult[i].TaxableAmount + '\',\'' + getResult[i].IgstAmount + '\',\'' + getResult[i].SgstAmount + '\',\'' + getResult[i].CgstAmount + '\',\'' + getResult[i].Freight + '\',\'' + getResult[i].BankName + '\',\'' + getResult[i].BranchName + '\',\'' + getResult[i].BankBranchIFSC + '\',\'' + getResult[i].BankAccountNo + '\',\'' + getResult[i].TermsAndCondition + '\',\'' + getResult[i].Note1 + '\',\'' + getResult[i].Note2 + '\' ,\'' + GetProperDate(getResult[i].SignatureDate) + '\',' + getResult[i].CurrencyId + ',' + getResult[i].LocationId + ',' + getResult[i].QToCompanyID + ',\'' + getResult[i].QFromGSTINNo + '\',\'' + getResult[i].Approved + '\',' + getResult[i].RevisionCount + '); return false;" ><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>'
                        }



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
        function btnAddCall(ItemLineNumber, DescriptionOfGoods, Qty, Hsn, Rate, Value, Igst, Amount, TotalAmount, ItemId, Sgst, SgstAmount, Cgst, CgstAmount) {
            dropArr.push(ItemId);
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
            cell = $(row.insertCell(-1));
            var btnRemove = $("<input />");
            btnRemove.attr("type", "button");
            btnRemove.attr("onclick", "Remove(this);");
            btnRemove.val("Remove");
            cell.append(btnRemove);
        }
        function GetTOCDetails(QID) {
            var element = "";
            $("#tblCustomers > TBODY").empty();
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetTOCDetails",
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
        function GetQuotationDetailsForUpdate(QID, ApplicationType, ApplicationReference, QType, QNo, QDate, ProjectName, FinantialYear, QToCompanyName, QToGSTINNo, QToContactPerson, QToEmailId, QToAddress, PaymentTerms, ValidityOfQuote, PlaceOfSupply, TotalAmountDigit, TotalAmountWords, TaxableAmount, IgstAmount, SgstAmount, CgstAmount, Freight, BankName, BranchName, BankBranchIFSC, BankAccNo, TermsAndCondition, Note1, Note2, SignatureDate, CurrencyId, LocationId, QToCompanyId, QFromGstinNo, Approved, RevisionCount) {
            GetCurrencyDetails(0, "");
            GetCompanyDetails(0, "");
            GetCompanyLocations(QToCompanyId);
            GetTOCDetails(QID);
            GetItemDetails(0, "");
            $('#ddlApplicationType').val(ApplicationType);
            $('#ddlQGstinNoType').val(QFromGstinNo);
            $('#hidHotelId').val(QID);

            $('#hidApproved').val(Approved);
            $('#hidRevisionCount').val(RevisionCount);




            $('#ddlQuotationType').val(QType);
            $('#txtQuotationNo').val(QNo);
            $('#txtQuotationDate').val(QDate);
            $('#txtProjectName').val(ProjectName);
            $('#txtFinancialYear').val(FinantialYear);
            0, // CO ID
            $('#txtCompanyName').val(QToCompanyName);
            $('#txtGstinParty').val(QToGSTINNo);
            $('#txtCompanyEmailId').val(QToEmailId);
            $('#txtContactPerson').val(QToContactPerson);
            $('#txtAddress').val(QToAddress);
            $('#txtPaymentTerms').val(PaymentTerms);
            $('#txtValidityOfQuote').val(ValidityOfQuote);
            $('#txtPlaceOfSupply').val(PlaceOfSupply);
            $('#txtGrandTotal').val(TotalAmountDigit);
            $('#txtTotalWords').val(TotalAmountWords);
            $('#txtTaxableAmount').val(TaxableAmount);
            $('#txtIgstAmount').val(IgstAmount);
            $('#txtSgstAmount').val(SgstAmount);
            $('#txtCgstAmount').val(CgstAmount);
            $('#txtFreight').val(Freight);
            $('#txtBankName').val(BankName);
            $('#txtBranchName').val(BranchName);
            $('#txtBankAccountNo').val(BankAccNo);
            $('#txtBranchIfsc').val(BankBranchIFSC);
            $('#txtTermsAndConditions').val(TermsAndCondition);
            $('#txtNotes1').val(Note1);
            $('#txtNotes2').val(Note2);
            $('#txtSignatureDate').val(SignatureDate);
            $('#ddlCurrency').val(CurrencyId);
            $('#ddlCompanyLocationId').val(LocationId);
            $('#ddlCompanyId').val(QToCompanyId);
            // $('#btnExportToPdf').prop('disabled', false);
            $('#ddlQGstinNoType,#ddlQuotationType,#ddlApplicationType,#ddlCurrency,#ddlCompanyId,#ddlCompanyLocationId').prop('disabled', true);
            ApplicationTypeChange(ApplicationType);
            $("#btnUpdate").show();
            $("#btnSave").hide();
        }
        var ones = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];
        var tens = ['', '', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
        var sep = ['', ' thousand ', ' million ', ' billion ', ' trillion ', ' quadrillion ', ' quintillion ', ' sextillion '];
        function numberToWords(val) {
            arr = [],
            str = '',
            i = 0;
            if (val.length === 0) {
                return 'Please type a number into the text-box.';
            }
            val = parseInt(val, 10);
            if (isNaN(val)) {
                return 'Invalid input.';
            }
            while (val) {
                arr.push(val % 1000);
                val = parseInt(val / 1000, 10);
            }
            while (arr.length) {
                str = (function (a) {
                    var x = Math.floor(a / 100),
                        y = Math.floor(a / 10) % 10,
                        z = a % 10;
                    return (x > 0 ? ones[x] + ' hundred ' : '') +
                           (y >= 2 ? tens[y] + ' ' + ones[z] : ones[10 * y + z]);
                })(arr.shift()) + sep[i++] + str;
            }
            return str;
        } (ones, tens, sep);
        function GetCompanyDetails(CompanyID, CompanyName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetCompanyDetailsNew",
                type: "POST",
                data: "{CompanyID:" + CompanyID + ",CompanyName:'" + CompanyName + "'}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCompanyId").empty();
                    $("#ddlCompanyId").append('<option value="0">Select</option>');
                    for (var i = 0; i < len; i++) {
                        $("#ddlCompanyId").append('<option value=' + getResult[i].CompanyId + '>' + getResult[i].CompanyName + '</option>');
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetCompanyLocations(CompanyID) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetLocationDetails",
                type: "POST",
                data: "{CompanyID:" + CompanyID + "}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCompanyLocationId").empty();
                    $("#ddlCompanyLocationId").append('<option value="0">------------Select------------</option>');
                    for (var i = 0; i < len; i++) {
                        $("#ddlCompanyLocationId").append('<option value=' + getResult[i].StateId + '>' + getResult[i].StateName + '</option>');
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetCompanyDataDetails(CompanyID, CompanyName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetCompanyDetailsNew",
                type: "POST",
                data: "{CompanyID:" + CompanyID + ",CompanyName:'" + CompanyName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        $("#txtContactPerson").val(getResult[i].POC + '-' + getResult[i].POCNo);
                        $("#txtAddress").val(getResult[i].Address);
                        $("#txtGstinParty").val(getResult[i].GstinNo);
                        $("#txtCompanyEmailId").val(getResult[i].EmailId);
                        $("#txtBankName").val(getResult[i].BankName);
                        $("#txtBranchName").val(getResult[i].BankBranch);
                        $("#txtBankAccountNo").val(getResult[i].BankAccountNo);
                        $("#txtBranchIfsc").val(getResult[i].BankIfsc);
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetItemDetails(ItemID, ItemName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetItemDetails",
                type: "POST",
                data: "{ItemID:" + ItemID + ",ItemName:'" + ItemName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlItem").empty();
                    $("#ddlItem").append('<option value="0">Select</option>');
                    for (var i = 0; i < len; i++) {
                        if (getResult[i].Approved) {
                            var x = jQuery.inArray(parseInt(getResult[i].ItemId.toString()), dropArr);
                            if (x == (-1)) {
                                $("#ddlItem").append('<option data-itemName=' + getResult[i].ItemName + ' data-itemId=' + getResult[i].ItemId + ' value=' + getResult[i].ItemId + '>' + getResult[i].ItemName + '</option>');
                            }
                        }
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetItemDataDetails(ItemID, ItemName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetItemDetails",
                type: "POST",
                data: "{ItemID:" + ItemID + ",ItemName:'" + ItemName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        $("#txtHsn").val(getResult[i].HsnCode);
                        $("#ddlIgst").val(getResult[i].GstRate);
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetQuotationDetailsOnQuotationType(QuotationType) {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Quotation.aspx/GetQuotationDetailsOnQuotationType",
                type: "POST",
                data: "{QuotationType:" + QuotationType + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var QuotationNo = parseInt(getResult.NoOfRows) + 1;

                    if (QuotationType == 1) {
                        $('#txtQuotationNo').val("CCPL/" + getResult.FinancialYear + "/SU" + QuotationNo);
                    }
                    else if (QuotationType == 2) {
                        $('#txtQuotationNo').val("CCPL/" + getResult.FinancialYear + "/SER" + QuotationNo);
                    }
                    else {
                        $('#txtQuotationNo').val("CCPL/" + getResult.FinancialYear + "/TEN" + QuotationNo);
                    }
                },
                error: function (err) {
                    alert("Data is not Available for this Quotation Type")
                }
            });
        }
        //function GetQuotationDetailsOnQuotationType(QuotationType) {
        //    $.ajax({
        //        contentType: "application/json; charset=utf-8",
        //        url: "Quotation.aspx/GetQuotationDetailsOnQuotationType",
        //        type: "POST",
        //        data: "{QuotationType:" + QuotationType + "}",
        //        dataType: "json",
        //        success: function (result) {
        //            var getResult = result.d;
        //            var QuotationNo = parseInt(getResult.QNo) + 1;
        //            if (QuotationType == 1) {
        //                $('#txtQuotationNo').val("CCPL/" + getResult.FinancialYear + "/SU" + QuotationNo);
        //            }
        //            else if (QuotationType == 2) {
        //                $('#txtQuotationNo').val("CCPL/" + getResult.FinancialYear + "/SER" + QuotationNo);
        //            }
        //            else {
        //                $('#txtQuotationNo').val("CCPL/" + getResult.FinancialYear + "/TEN" + QuotationNo);
        //            }
        //        },
        //        error: function (err) {
        //            alert("Data is not Available for this Quotation Type")
        //        }
        //    });
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


        $('#txtFinancialYear').on('change', function () {
            var x = $('#txtQuotationNo').val();
            if (!x.match("^CCPL")) {
                return false;
            }
            var A = new Array();
            A = $('#txtQuotationNo').val().split("/");
            var B = parseInt($('#txtFinancialYear').val()) + 1;
            $('#txtQuotationNo').val(A[0] + "/" + $('#txtFinancialYear').val() + "-" + B + "/" + A[2])
        });

        function ClearInputBoxValues() {
            $("#tblCustomers").load("Quotation.aspx #tblCustomers");
            $('input[type=text]').each(function () {
                $(this).val('');
            });
            $('select').each(function () {
                $(this).val('0');
            });
            $('#txtTermsAndConditions,#txtNotes1,#txtNotes2').val('');
            $('#txtGstinNo').val("07AAACC4708J1ZS");
            $('#ddlQuotationType').val("1");
        }
        function ApplicationTypeChange(Type) {


            if (Type == 0) {
                $('#QuotationNoText').text("Quotation No");
                $('#QuotationTypeText').text("Quotation Type");
                $('#QuotationApplicationText').text("QUOTATION APPLICATION");
            }
            else {
                $('#QuotationNoText').text("PO No");
                $('#QuotationTypeText').text("PO Type");
                $('#QuotationApplicationText').text("PURCHASE ORDER APPLICATION");
            }
        }



    </script>
</asp:Content>
