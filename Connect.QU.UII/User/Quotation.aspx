<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User/User.Master" CodeBehind="Quotation.aspx.cs" Inherits="Connect.QU.UII.User.Quotation" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <%--   <link href="Stylesheets/jquery.signaturepad.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery.signaturepad.js"></script>--%>

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


        /*feb 2021*/
        /*@media (min-width: 768px) #ApplicationForm .AppFormBody input[type='text'], .PasswordControl {
            border: none;
            height: ; 
            border-bottom: 1px solid #999; color: #1b2cef;
            width: ;
        }*/


        /*body {
            counter-reset: Count-Value;
        }*/

        /*table {
            border-collapse: separate;
             width: 100%;
        }*/

        /*tr td:first-child:before {
            counter-increment: Count-Value;
            /*content: "Row:" counter(Count-Value);*/
        /*content: counter(Count-Value) ".";
        }
        */


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

        .paginate_button {
            margin-left: 1%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="EAWarpper" runat="Server">


    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div id="ApplicationForm">

                    <div class="text-right">
                        <div class="form-inline">
                            <div class="form-group">

                                <select id="ddlPageType" class="form-control" name="GstinNoType">
                                    <option value="0">Quotation</option>
                                    <option value="1">Purchase Order</option>

                                </select>
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
                            E-Mail:<a href="mailto:pravesh.kr01@gmail.com"><u> pravesh.kr01@gmail.com</u></a>
                        </p>

                        <p>

                            <div class="form-inline">
                                <div class="form-group">
                                    <label>&nbsp;GSTIN No </label>
                                    <%--                                    <input type="text" id="txtGstinNo" value="07AAACC4708J1ZS" disabled />--%>
                                    <select id="ddlQGstinNoType" class="form-control" name="GstinNoType">
                                        <%--<option value="0">--select--</option>--%>
                                        <option value="1"><a href="xyz" target="_blank">07AAACC4708J1ZS</a></option>
                                        <option value="2"><a href="xyz" target="_blank">07AAACC4708sfsS</a></option>

                                    </select>

                                    &nbsp;&nbsp;
                                      <label id="QuotationNoText">&nbsp;Quotation No</label>
                                    <input type="text" id="txtQuotationNo" disabled />
                                    &nbsp;&nbsp;
                                   <label id="QuotationTypeText">&nbsp;Quotation Type</label>
                                    <select id="ddlQuotationType" class="form-control" name="QuotationType">
                                        <%--<option value="0">--select--</option>--%>
                                        <option value="1"><a href="xyz" target="_blank">SU</a></option>
                                        <option value="2"><a href="xyz" target="_blank">SER</a></option>
                                        <option value="3"><a href="xyz" target="_blank">TEN</a></option>
                                    </select>

                                    <label class="label1" for="ddlCurrency">Currency</label>
                                    <select id="ddlCurrency" class="form-control"></select>

                                </div>
                            </div>
                        </p>

                        <p>
                            <div class="form-inline">
                                <div class="form-group">
                                    <label>Help</label>
                                    <select id="ddlHelp" class="form-control" name="HelpType">
                                        <%--<option value="0">--select--</option>--%>
                                        <option value="1"><a href="xyz" target="_blank">PDF</a></option>
                                        <option value="2"><a href="xyz" target="_blank">PDF</a></option>
                                        <option value="3"><a href="xyz" target="_blank">PDF</a></option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="buttton" id="btnExportToPdf" value="Export" class="btn btn-sm btn-success" />
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
                            </br>

                            <div class="form-inline AppX">
                                <div class="form-row">
                                    <div class="col-lg-4">
                                        <label class="control-label">Project Name </label>
                                        <input type="text" id="txtProjectName" class="form-control" />
                                    </div>
                                    <%-- <div class="col-lg-4">
                                        <label class="control-label">Finantial Year</label>


                                            <option value="2018-2019"><a href="xyz" target="_blank">2018-2019</a></option>
                                            <option value="2019-2020"><a href="xyz" target="_blank">2019-2020</a></option>
                                            <option value="2020-2021" selected><a href="xyz" target="_blank">2020-2021</a></option>
                                            <option value="2021-2022"><a href="xyz" target="_blank">2021-2022</a></option>
                                            <option value="2022-2023"><a href="xyz" target="_blank">2022-2023</a></option>
                                            <option value="2023-2024"><a href="xyz" target="_blank">2023-2024</a></option>
                                            <option value="2024-2025"><a href="xyz" target="_blank">2024-2025</a></option>
                                            <option value="2025-2026"><a href="xyz" target="_blank">2025-2026</a></option>
                                            <option value="2026-2027"><a href="xyz" target="_blank">2026-2027</a></option>
                                            <option value="2027-2028"><a href="xyz" target="_blank">2027-2028</a></option>
                                            <option value="2028-2029"><a href="xyz" target="_blank">2028-2029</a></option>
                                            <option value="2029-2030"><a href="xyz" target="_blank">2029-2030</a></option>
                                        </select>




                                    </div>--%>

                                    <div class="col-lg-4">
                                        <label class="control-label">Financial Year</label>

                                        <input type='text' class="form-control" id="txtFinancialYear" />

                                    </div>




                                    <div class="col-lg-4">
                                        <label for="txtQuotationDate" class="control-label">Date:</label><b />
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

                        <p>
                            <div class="form-inline AppX">
                                <div class="form-row">
                                    <div class="col-lg-4">
                                        <label class="control-label">Company Name </label>
                                        <select id="ddlCompanyId" name="ddlCompanyName" class="selectBox form-control"></select>

                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label">Contact Person   </label>
                                        <input type="text" id="txtContactPerson" class="form-control" disabled />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label">Address </label>
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
                                        <label class="control-label">GSTIN</label>
                                        <input type="text" id="txtGstinParty" class="form-control" disabled />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label">Payment Terms</label>
                                        <input type="text" id="txtaymentTerms" class="form-control" />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label">Quote Validity  </label>
                                        <input type="text" id="txtValidityOfQuote" class="form-control" />
                                    </div>

                                </div>
                                <div class="form-group">
                                    <div class="col-lg-12">
                                        <label class="control-label">Place Of Supply </label>
                                        <input type="text" id="txtPlaceOfSupply" class="form-control" />
                                    </div>
                                </div>

                            </div>

                        </p>


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
                                                    <%--    <input type="text" id="txtDescriptionOfGoods" />--%>


                                                    <select id="ddlItem" name="ddlItemName" class="selectBox form-control"></select>
                                                </td>

                                                <td>
                                                    <input type="text" id="txtQty" /></td>
                                                <td>
                                                    <input type="text" id="txtHsn" disabled /></td>
                                                <td>
                                                    <input type="text" id="txtRate" /></td>
                                                <td>
                                                    <input type="text" id="txtValue" /></td>
                                                <td>
                                                    <input type="text" id="txtIgst" disabled /></td>
                                                <td>
                                                    <input type="text" id="txtAmount" /></td>
                                                <td>
                                                    <input type="text" id="txtTotalAmount1" /></td>

                                                <td>
                                                    <input type="button" id="btnAdd" value="Add" /></td>

                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <p>
                            <div class="form-inline AppX">
                                <div class="form-row">

                                    <div class="col-lg-4">
                                        <label class="control-label">Taxable Amount  </label>
                                        <input type="text" id="txtTaxableAmount" class="form-control" />

                                    </div>
                                    <div class="col-lg-8">
                                        <label class="control-label">Total Words </label>
                                        <input type="text" id="txtTotalWords" class="form-control" />
                                    </div>

                                </div>
                            </div>
                        </p>

                        <p>
                            <div class="form-inline AppX">
                                <div class="form-row">
                                    <div class="col-lg-4">
                                        <label class="control-label">Freight </label>
                                        <input type="text" id="txtFreight" class="form-control" />
                                    </div>
                                    <div class="col-lg-8">

                                        <label class="control-label">Grand Total</label>
                                        <input type="text" id="txtGrandTotal" class="form-control" />
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
                                        <label class="control-label">Bank Name </label>
                                        <input type="text" id="txtBankName" class="form-control" disabled />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label">Branch Name</label>
                                        <input type="text" id="txtBranchName" class="form-control" disabled />
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="control-label">Account No.</label>
                                        <input type="text" id="txtBankAccountNo" class="form-control" disabled />
                                    </div>

                                </div>
                            </div>
                        </p>


                        <p>
                            <div class="form-inline AppX">
                                <div class="form-row">
                                    <div class="col-lg-12">
                                        <label class="control-label">Bank Branch IFSC</label>
                                        <input type="text" id="txtBranchIfsc" class="form-control" disabled />
                                    </div>
                                </div>
                            </div>
                        </p>

                        <br />


                        <p><b>Terms And Conditions :</b></p>
                        <textarea class="form-control" rows="2" cols="2" id="txtTermsAndConditions"></textarea>

                        <p><b>Note 1 :</b></p>
                        <textarea class="form-control" rows="2" cols="2" id="txtNotes1"></textarea>

                        <p><b>Note 2 :</b></p>
                        <textarea class="form-control" rows="2" cols="2" id="txtNotes2"></textarea>

                        <%--old data--%>

                        <%--signature and date--%>
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


        <%--        new code ends here--%>

        <div class="container">
            <%--  <table id="CityTableId" class="table table-striped cf">
            </table>--%>
        </div>

        <%--<div class="row" style="width: 93%; margin-left: 3%;">
            <table id="CityTableId" class="display" cellspacing="0" width="100%"></table>
        </div>--%>
        <div class="container" style="margin-top: 5%; margin-bottom: 1%; width: 100%;">

            <table id="CityTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable" style="table-layout: fixed"></table>

        </div>

        <%--    update panel--%>

        <div id="CityModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Company Details Update</h4>
                    </div>
                    <div class="modal-body" style="padding: 1px;">
                        <div class="box box-solid">
                            <div class="box-body">

                                <div class="row">
                                    <div class="col-md-12">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input id="btnUpdate1" type="button" value="Update" class="btn btn-success" style="float: left;" />
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>

        </div>
        <input id="hidHotelId" type="hidden" />

        <!--/Slider -->
        <div class="container" style="width: 70%;">

            <div class="container" id="DivPage2" style="display: block;">
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


        <script type="text/javascript">


            // debugger;
            $(document).ready(function () {


                var data = {};

                //new code

                $('#ddlPageType').change(function () {
                    if ($('#ddlPageType').val() == 0) {
                        $('#QuotationNoText').text("Quotation No");
                        $('#QuotationTypeText').text("Quotation Type");
                        $('#QuotationApplicationText').text("QUOTATION APPLICATION");
                    }
                    else {
                        $('#QuotationNoText').text("Purchase Order No");
                        $('#QuotationTypeText').text("Purchase Order Type");
                        $('#QuotationApplicationText').text("PURCHASE ORDER APPLICATION");
                    }
                });




                //ends here


                $('#ddlCompanyId').change(function () {
                    if ($('#ddlCompanyId').val() == 0) {

                    }
                    else {
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

                //Number to Words
                $('#txtGrandTotal').change(function () {
                    // alert('Function called CHANGE');
                    $('#txtTotalWords').val(numberToWords($('#txtGrandTotal').val()));
                });

                //qty to rate = value without tax
                $('#txtRate,#txtQty,#txtValue').change(function () {
                    var a = 1;
                    if ($('#txtQty').val() != "") {
                        a = parseInt($('#txtQty').val());
                    }
                    var b = parseInt($('#txtRate').val());
                    var c = a * b;
                    $('#txtValue').val(c);
                });

                //igst
                $('#txtIgst,#txtAmount,#txtValue,#txtRate,#txtQty').change(function () {

                    var igstTax = parseInt($('#txtIgst').val());
                    var totalRate = parseInt($('#txtValue').val());
                    var z = totalRate * (igstTax / 100);
                    $('#txtAmount').val(z.toFixed(2));
                });

                //total amount
                $('#txtTotalAmount1,#txtIgst,#txtAmount,#txtValue,#txtRate,#txtQty').change(function () {

                    var igstTaxValue = parseInt($('#txtValue').val());
                    var Value = parseInt($('#txtAmount').val());
                    var z = igstTaxValue + Value;
                    $('#txtTotalAmount1').val(z.toFixed(2));
                });

                //financialYear
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

                //new code 

                $("body").on("click", "#btnAdd", function () {
                    //Reference the Name and Country TextBoxes.
                    var txtDescriptionOfGoods = $("#ddlItem option:selected").text();
                    alert(txtDescriptionOfGoods);
                    var txtQty = $("#txtQty");
                    var txtHsn = $("#txtHsn");
                    var txtRate = $("#txtRate");
                    var txtValue = $("#txtValue");
                    var txtIgst = $("#txtIgst");
                    var txtAmount = $("#txtAmount");
                    var txtTotalAmount1 = $("#txtTotalAmount1");

                    //Get the reference of the Table's TBODY element.
                    var tBody = $("#tblCustomers > TBODY")[0];

                    //Add Row.
                    var row = tBody.insertRow(-1);

                    //Add Name cell.
                    var cell = $(row.insertCell(-1));
                    //cell.html(txtDescriptionOfGoods.val());
                    cell.html(txtDescriptionOfGoods);

                    //Add Country cell.
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
                    cell.html(txtAmount.val());

                    cell = $(row.insertCell(-1));
                    cell.html(txtTotalAmount1.val());

                    // funTotalAmount(txtTotalAmount1.val(), txtAmount.val());

                    funRecalculateAfterAdding(txtTotalAmount1.val(), txtAmount.val());
                    //Add Button cell.
                    cell = $(row.insertCell(-1));
                    var btnRemove = $("<input />");
                    btnRemove.attr("type", "button");
                    btnRemove.attr("onclick", "Remove(this);");
                    btnRemove.val("Remove");
                    cell.append(btnRemove);

                    //Clear the TextBoxes.
                    //txtDescriptionOfGoods.val("");

                    $("#ddlItem option").prop("selected", false);

                    txtQty.val("");
                    txtHsn.val("");
                    txtRate.val("");
                    txtValue.val("");
                    txtIgst.val("");
                    txtAmount.val("");
                    txtTotalAmount1.val("");

                });


                //new code ends here
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

                    //Quantity
                    //for (var j = 1; j <= $(".totalQty").length; i++) {
                    //    xTotalQty = xTotalQty + parseInt(($("#txtQty" + i).val() != "") ? $("#txtQty" + i).val() : 0);
                    //}
                    //if (isNaN(xTotalQty)) {
                    //    $('#txtTotalQuantity').val();
                    //}
                    //else
                    //    $('#txtTotalQuantity').val(xTotalQty);



                });
                $(function () {
                    //$('#datetimepicker1,#datetimepicker3').datetimepicker();
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



                    data.Mode=  1;
                    data.QuotationId  =0;
                    data.FormType=$('#ddlPageType').val();
                    
                    data.QFromGSTINNo=$("#ddlQGstinNoType option:selected" ).text();//


                    data.QuotationType  =$('#ddlQuotationType').val();
                    data.QNo  =$('#txtQuotationNo').val();
                    data.QType=$('#ddlQuotationType').val();
                    data.QDate  =$('#txtQuotationDate').val();
                    //  data.QFromGSTINNo  = $('#txtGstinNo').val();

                    data.ProjectName  =$('#txtProjectName').val();
                    data.FinantialYear  =$('#txtFinantialYear').val();
              
                    data.QToCompanyID  =$('#ddlCompanyId option:selected').val(), // 
                    data.QToCompanyName  =$('#txtCompanyName').val();
                    data.QToGSTINNo  =$('#txtGstinParty').val();
                    data.QToContactPerson  =$('#txtContactPerson').val();
                    data.QToAddress  =$('#txtAddress').val();
                 
                    data.PaymentTerms  =$('#txtaymentTerms').val();
                    data.ValidityOfQuote  =$('#txtValidityOfQuote').val();
                    data.PlaceOfSupply  =$('#txtPlaceOfSupply').val();
                 
                    data.TotalAmountDigit  =$('#txtGrandTotal').val();
                    data.TotalAmountWords  =$('#txtTotalWords').val();
                    data.TaxableAmount  =$('#txtTaxableAmount').val();
                    data.Freight  =$('#txtFreight').val();
                 
                    data.BankName  =$('#txtBankName').val();
                    data.BranchName  =$('#txtBranchName').val();
                    data.BankAccountNo  =$('#txtBankAccountNo').val();
                    data.BankBranchIFSC  =$('#txtBranchIfsc').val();
                    
                    data.TermsAndCondition  =$('#txtTermsAndConditions').val();
                    data.Note1  =$('#txtNotes1').val();
                    data.Note2  =$('#txtNotes2').val();
                    data.SignatureDate  =$('#txtSignatureDate').val();


                    SaveUpdateQuotationDetails(data);

                    GetQuotationDetails(0);




                });

                $("#btnUpdate").click(function () {

                    data.Mode=  2;
                    data.QuotationId  =$('#hidHotelId').val();
                    data.FormType=$('#ddlPageType').val();
                    
                    data.QFromGSTINNo=$("#ddlQGstinNoType option:selected" ).text();//


                    data.QuotationType  =$('#ddlQuotationType').val();
                    data.QNo  =$('#txtQuotationNo').val();
                    data.QType=$('#ddlQuotationType').val();
                    data.QDate  =$('#txtQuotationDate').val();
                    //  data.QFromGSTINNo  = $('#txtGstinNo').val();

                    data.ProjectName  =$('#txtProjectName').val();
                    data.FinantialYear  =$('#txtFinantialYear').val();
              
                    data.QToCompanyID  =$('#ddlCompanyId option:selected').val(), // 
                    data.QToCompanyName  =$('#txtCompanyName').val();
                    data.QToGSTINNo  =$('#txtGstinParty').val();
                    data.QToContactPerson  =$('#txtContactPerson').val();
                    data.QToAddress  =$('#txtAddress').val();
                 
                    data.PaymentTerms  =$('#txtaymentTerms').val();
                    data.ValidityOfQuote  =$('#txtValidityOfQuote').val();
                    data.PlaceOfSupply  =$('#txtPlaceOfSupply').val();
                 
                    data.TotalAmountDigit  =$('#txtGrandTotal').val();
                    data.TotalAmountWords  =$('#txtTotalWords').val();
                    data.TaxableAmount  =$('#txtTaxableAmount').val();
                    data.Freight  =$('#txtFreight').val();
                 
                    data.BankName  =$('#txtBankName').val();
                    data.BranchName  =$('#txtBranchName').val();
                    data.BankAccountNo  =$('#txtBankAccountNo').val();
                    data.BankBranchIFSC  =$('#txtBranchIfsc').val();
                    
                    data.TermsAndCondition  =$('#txtTermsAndConditions').val();
                    data.Note1  =$('#txtNotes1').val();
                    data.Note2  =$('#txtNotes2').val();
                    data.SignatureDate  =$('#txtSignatureDate').val();

                  

                    SaveUpdateQuotationDetails(data);

                });

                $("#btnClear").click(function () {
                    ClearInputBoxValues(1);
                    //$('#txtQuotationNo').val("CCPL/2019-2020/SU000" + Math.floor((Math.random() * 100) + 1));
                    GetQuotationDetailsOnQuotationType(1);
                });

                $('#ddlQuotationType').change(function () {
                    if ($('#ddlQuotationType').val() == 1) {
                        //  SetQNo(1);
                        //  $('#txtQuotationNo').val("CCPL/2019-2020/SU000" + Math.floor((Math.random() * 100) + 1));
                        GetQuotationDetailsOnQuotationType(1);
                        // aleart("SU");
                    }
                    else if ($('#ddlQuotationType').val() == 2) {
                        // SetQNo(2);
                        GetQuotationDetailsOnQuotationType(2);
                        //$('#txtQuotationNo').val("CCPL/2019-2020/SER000" + Math.floor((Math.random() * 100) + 1));
                        //aleart("SER");
                    }
                    else {
                        //SetQNo(3);
                        //$('#txtQuotationNo').val("CCPL/2019-2020/TEN000" + Math.floor((Math.random() * 100) + 1));
                        GetQuotationDetailsOnQuotationType(3);
                        // aleart("TEN");
                    }
                });
            });

            function funTotalAmount(val, taxVal) {
                $('#txtTaxableAmount').val(taxVal);
                $('#txtGrandTotal').val(val);
                $('#txtTotalWords').val(numberToWords(val));
            }

            function funRecalculateAfterAdding(amount, tax) {


                //$('#txtTaxableAmount').val(taxVal);
                //$('#txtGrandTotal').val(val);
                //$('#txtTotalWords').val(numberToWords(val));




                var TotalAmount = 0;

                if (!isNaN(amount)) {
                    //  alert('nan')
                    TotalAmount = amount;
                }


                if ($('#txtGrandTotal').val() != "") {
                    TotalAmount = parseInt($('#txtGrandTotal').val());
                }
                var AddedAmount = parseInt(amount);
                var NewAmount = TotalAmount + AddedAmount;
                $('#txtGrandTotal').val(NewAmount);
                $('#txtTotalWords').val(numberToWords(NewAmount));

                var TotalTax = 0;
                if ($('#txtTaxableAmount').val() != "") {
                    TotalTax = parseInt($('#txtTaxableAmount').val());
                }
                var AddedTax = parseInt(tax);
                var NewTax = AddedTax + TotalTax;
                $('#txtTaxableAmount').val(NewTax);
                // $('#txtTotalWords').val(numberToWords(NewAmount));


            }



            function funRecalculateAfterRemoving(amount, tax) {
                var TotalAmount = 0;
                if ($('#txtGrandTotal').val() != "") {
                    TotalAmount = parseInt($('#txtGrandTotal').val());
                }
                var RemovedAmount = parseInt(amount);
                var NewAmount = TotalAmount - RemovedAmount;
                $('#txtGrandTotal').val(NewAmount);
                $('#txtTotalWords').val(numberToWords(NewAmount));

                var TotalTax = 0;
                if ($('#txtTaxableAmount').val() != "") {
                    TotalTax = parseInt($('#txtTaxableAmount').val());
                }
                var RemovedTax = parseInt(tax);
                var NewTax = RemovedTax - TotalTax;
                $('#txtTaxableAmount').val(NewTax);
                // $('#txtTotalWords').val(numberToWords(NewAmount));


            }


            function EmailQuotationDetails(QID) {
                //alert(QID);
                //alert("EmailQuotationDetails");
                var EmailId = "pravesh.kr01@gmail.com";
                var Name = "Pravesh";
                var Title = "Quotation";
                var id = QID;

                $.ajax({
                    type: "POST",
                    url: "Quotation.aspx/EmailQuotationDetails",
                    data: JSON.stringify({ 'EmailId': EmailId, 'Name': Name, 'Title': Title, 'ID': id }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        alert("Quotation details sent successfully");
                        // window.location.href = 'Login.aspx';
                        // alert(JSON.stringify(r));
                    },
                    error: function (respnse) {
                        // alert(respnse + " wrng");
                    }
                });
            }

            function Remove(button) {



                //Determine the reference of the Row using the Button.
                var row = $(button).closest("TR");

                // alert("recalculate fun called" + row[0].cells[7].innerText);
                funRecalculateAfterRemoving(row[0].cells[7].innerText, row[0].cells[6].innerText);


                var name = $("TD", row).eq(0).html();
                if (confirm("Do you want to delete: " + name)) {
                    //Get the reference of the Table.
                    var table = $("#tblCustomers")[0];

                    //Delete the Table row using it's Index.
                    table.deleteRow(row[0].rowIndex);
                }
            };

            function GetCurrencyDetails(CurrencyId, CurrencyName) {
                var element = "";

                $.ajax({
                    contentType: "application/json; charset=utf-8",
                    url: "Quotation.aspx/GetCurrencyDetails",
                    type: "POST",
                    data: "{CurrencyId:" + CurrencyId + ",CurrencyName:'" + CurrencyName + "'}",

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


            function SaveUpdateQuotationDetails(data,) {
                var tocArr = new Array();
                $("#tblCustomers TBODY TR").each(function () {
                    var row = $(this);
                    var TOC = {};
                    TOC.DescriptionOfGoods = row.find("TD").eq(0).html();
                    TOC.Qty = row.find("TD").eq(1).html();
                    TOC.Hsn = row.find("TD").eq(2).html();
                    TOC.Rate = row.find("TD").eq(3).html();
                    TOC.Value = row.find("TD").eq(4).html();
                    TOC.Igst = row.find("TD").eq(5).html();
                    TOC.Amount = row.find("TD").eq(6).html();
                    TOC.TotalAmount1 = row.find("TD").eq(7).html();

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
                            //GetCityDetails(0, "", 0);
                            // GetCompanyDetails(0, "");
                            ClearInputBoxValues(Mode);
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
                        element = element + '<th>Action</th>';

                        element = element + '</tr></thead><tbody>';

                        if (len == 0) {
                            element = element + '<tr><td colspan="3"><p class="text-center">No Quotation Data Available</p></td></tr>'
                        }

                        for (var i = 0; i < len; i++) {
                            //alert(i);

                            //alert(getResult[i].BankAccountNo);

                            element = element + '<tr>';
                            element = element + '<td>' + Counter++ + '</td>';
                            element = element + '<td>' + getResult[i].QNo + '</td>';
                            element = element + '<td>' + getResult[i].QType + '</td>';
                            element = element + '<td>CCPL</td>';
                            element = element + '<td>' + getResult[i].QToCompanyName + '</td>';
                            element = element + '<td>' + GetProperDate(getResult[i].QDate) + '</td>';
                            element = element + '<td><a href="#"><span class="label label-warning" onclick="GetQuotationDetailsForUpdate(' + getResult[i].QID + ',\'' + getResult[i].QType + '\',\'' + getResult[i].QNo + '\',\'' + GetProperDate(getResult[i].QDate) + '\',\'' + getResult[i].ProjectName + '\',\'' + getResult[i].FinantialYear + '\',\'' + getResult[i].QToCompanyName + '\',\'' + getResult[i].QToGSTINNo + '\',\'' + getResult[i].QToContactPerson + '\',\'' + getResult[i].QToAddress + '\',\'' + getResult[i].PaymentTerms + '\',\'' + getResult[i].ValidityOfQuote + '\',\'' + getResult[i].PlaceOfSupply + '\',\'' + getResult[i].TotalAmountDigit + '\',\'' + getResult[i].TotalAmountWords + '\',\'' + getResult[i].TaxableAmount + '\',\'' + getResult[i].Freight + '\',\'' + getResult[i].BankName + '\',\'' + getResult[i].BranchName + '\',\'' + getResult[i].BankBranchIFSC + '\',\'' + getResult[i].BankAccountNo + '\',\'' + getResult[i].TermsAndCondition + '\',\'' + getResult[i].Note1 + '\',\'' + getResult[i].Note2 + '\' ,\'' + GetProperDate(getResult[i].SignatureDate) + '\'); return false;" ><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a><a href="#" ><span class="label label-success"   onclick="EmailQuotationDetails(' + getResult[i].QID + '); return false;" style="margin-left: 23px;"><i class="fa fa-print"  aria-hidden="true"></i>   Send</span></a></td>';
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

            function btnAddCall(DescriptionOfGoods, Qty, Hsn, Rate, Value, Igst, Amount, TotalAmount1) {

                //alert(DescriptionOfGoods, Qty, Hsn, Rate, Value, Igst, Amount, TotalAmount1);
                //  $('#tblCustomers').empty();
                //17 feb


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

                //Add Button cell.
                cell = $(row.insertCell(-1));
                var btnRemove = $("<input />");
                btnRemove.attr("type", "button");
                btnRemove.attr("onclick", "Remove(this);");
                btnRemove.val("Remove");
                cell.append(btnRemove);

                //Clear the TextBoxes.
                //txtDescriptionOfGoods.val("");
                //txtQty.val("");
                //txtHsn.val("");
                //txtRate.val("");
                //txtValue.val("");
                //txtIgst.val("");
                //txtAmount.val("");
                //txtTotalAmount1.val("");
            }

            //pravesh
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

            function GetQuotationDetailsForUpdate(QID, QType, QNo, QDate, ProjectName, FinantialYear, QToCompanyName, QToGSTINNo, QToContactPerson, QToAddress, PaymentTerms, ValidityOfQuote, PlaceOfSupply, TotalAmountDigit, TotalAmountWords, TaxableAmount, Freight, BankName, BranchName, BankBranchIFSC, BankAccNo, TermsAndCondition, Note1, Note2, SignatureDate) {

                //  alert(BankAccNo);
                GetTOCDetails(QID);

                $('#hidHotelId').val(QID);
                $('#ddlQuotationType').val(QType),
                $('#txtQuotationNo').val(QNo),
                $('#txtQuotationDate').val(QDate),
                // $('#txtGstinNo').val(),
                $('#txtProjectName').val(ProjectName),
                $('#txtFinantialYear').val(FinantialYear),
                0, // CO ID
                $('#txtCompanyName').val(QToCompanyName),
                $('#txtGstinParty').val(QToGSTINNo),

                $('#txtContactPerson').val(QToContactPerson),
                $('#txtAddress').val(QToAddress),
                $('#txtaymentTerms').val(PaymentTerms),
                $('#txtValidityOfQuote').val(ValidityOfQuote),
                $('#txtPlaceOfSupply').val(PlaceOfSupply),
                //TOCID
                //$('#txtTotalAmount').val(TotalAmountDigit),  //17 feb

                $('#txtGrandTotal').val(TotalAmountDigit),
                $('#txtTotalWords').val(TotalAmountWords),
                $('#txtTaxableAmount').val(TaxableAmount),
                $('#txtFreight').val(Freight),
                //$('#txtGrandTotal').val(TotalAmountDigit),
               $('#txtBankName').val(BankName),
               $('#txtBranchName').val(BranchName),
                $('#txtBankAccountNo').val(BankAccNo),
               $('#txtBranchIfsc').val(BankBranchIFSC),
               $('#txtTermsAndConditions').val(TermsAndCondition),
               $('#txtNotes1').val(Note1),
               $('#txtNotes2').val(Note2),
               $('#txtSignatureDate').val(SignatureDate)
                //  alert(SignatureDate);
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

            function ClearInputBoxValues(Mode) {
                if (Mode == 1) {
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
            }


            //var a = ['','one ','two ','three ','four ', 'five ','six ','seven ','eight ','nine ','ten ','eleven ','twelve ','thirteen ','fourteen ','fifteen ','sixteen ','seventeen ','eighteen ','nineteen '];
            //var b = ['', '', 'twenty','thirty','forty','fifty', 'sixty','seventy','eighty','ninety'];

            //function numberToWords(num) {
            //    if ((num = num.toString()).length > 9) return 'Number is too big';
            //    n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
            //    if (!n) return; var str = '';
            //    str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
            //    str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
            //    str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
            //    str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
            //    str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
            //    return str;
            //}


           
           var ones= ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];
           var tens= ['', '', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
           var sep= ['', ' thousand ', ' million ', ' billion ', ' trillion ', ' quadrillion ', ' quintillion ', ' sextillion '];
           

            function numberToWords(val) {

                arr = [],
                str = '',
                i = 0;
        
                if ( val.length === 0 ) {
                    return 'Please type a number into the text-box.';
                     
                }
        
                val = parseInt( val, 10 );
                if ( isNaN( val ) ) {
                    return 'Invalid input.';
            
                }
        
                while ( val ) {
                    arr.push( val % 1000 );
                    val = parseInt( val / 1000, 10 );   
                }
        
                while ( arr.length ) {
                    str = (function( a ) {
                        var x = Math.floor( a / 100 ),
                            y = Math.floor( a / 10 ) % 10,
                            z = a % 10;
                
                        return ( x > 0 ? ones[x] + ' hundred ' : '' ) +                 
                               ( y >= 2 ? tens[y] + ' ' + ones[z] : ones[10*y + z] ); 
                    })( arr.shift() ) + sep[i++] + str;                     
                }
        
                return str;        
    
    
            }( ones, tens, sep );

            function GetCompanyDetails(CompanyID, CompanyName) {
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

                            $("#ddlItem").append('<option value=' + getResult[i].ItemId + '>' + getResult[i].ItemName + '</option>');
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
                            $("#txtIgst").val(getResult[i].GstRate);

                        }
                    },
                    error: function (err) {
                        //alert(err.statusText)
                    }
                });
            }

            // Get Quotation Details On Quotation Type

            function GetQuotationDetailsOnQuotationType(QuotationType) {
                //QuotationType = $('#ddlQuotationType').val();
                $.ajax({
                    contentType: "application/json; charset=utf-8",
                    url: "Quotation.aspx/GetQuotationDetailsOnQuotationType",
                    type: "POST",
                    data: "{QuotationType:" + QuotationType + "}",
                    dataType: "json",
                    success: function (result) {
                        var getResult = result.d;
                        //var finalresult=getResult.QType,getResult.QNo,getResult.FinantialYear;
                        //alert(getResult.FinantialYear)
                        //$('#txtQuotationNo').val("CCPL/2019-2020/TEN000" + Math.floor((Math.random() * 100) + 1));
                        var QuotationNo = parseInt(getResult.QNo) + 1;

                        //alert(QuotationNo)
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


        </script>
</asp:Content>
