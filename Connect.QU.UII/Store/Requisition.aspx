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
        width:100% !important;
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
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div style="overflow-x: auto">

                                            <table border="1" style="width: -webkit-fill-available;">


                                                <tr>
                                                    <td>
                                                        <label class="control-label">REQUISITION NUMBER</label>
                                                    </td>
                                                    <td>

                                                        <select id="ddlQuotation" name="ddlQuotationName" class="selectBox form-control"></select></td>
                                                    <td>
                                                        <label class="control-label">REQUIRED BY</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtTaxableAmount" class="form-control hello" /></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label class="control-label">REQUISITION DATE</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtTaxableAmount" class="form-control hello" /></td>
                                                    <td>
                                                        <label class="control-label">APPROVED BY</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtTaxableAmount" class="form-control hello" /></td>
                                                </tr>
                                            </table>

                                        </div>
                                    </div>
                                </div>



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


                                                            <select id="ddlItem" name="ddlItemName" class="selectBox form-control hello"></select>
                                                        </td>

                                                        <td>
                                                            <input type="text" id="txtQty" class="hello" /></td>
                                                        <td>
                                                            <input type="text" id="txtHsn" class="hello" /></td>
                                                        <td>
                                                            <input type="text" id="txtRate" class="hello" /></td>
                                                        <td>
                                                            <input type="text" id="txtValue" class="hello" /></td>
                                                        <td>
                                                            <input type="text" id="txtIgst" class="hello" /></td>
                                                        <td>
                                                            <input type="text" id="txtAmount" class="hello" /></td>
                                                        <td>
                                                            <input type="text" id="txtTotalAmount1" class="hello" /></td>

                                                        <td>
                                                            <input type="button" id="btnAdd" value="Add" /></td>

                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>




                            </div>

                            <%--    <div class="row APPTest">
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
                            </div>--%>

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



        </section>
        <!-- /.content -->

        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>

        <input id="hidHotelId" type="hidden" />

    </div>

    <script type="text/javascript">

        $(document).ready(function () {

            GetQuotationDetails(0);


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
            $('#ddlQuotation').change(function () {

                GetTOCDetails($('#ddlQuotation').val());

            });


            $("#btnSave").click(function () {

                data.Mode = "1";
                data.CompanyId = 0;
                data.CompanyName = $('#txtCompanyName').val();
                data.GstinNo = $('#txtGSTIN').val();
                data.PanNo = $('#txtPanNo').val();//
                data.ServiceTaxNo = $('#txtServiceTaxNo').val();
                data.EmailId = $('#txtEmailId').val();
                data.Address = $('#txtAddress').val();
                data.CountryId = parseInt($('#ddlCountry').val());
                data.StateId = parseInt($('#ddlState').val());
                data.CityId = parseInt($('#ddlCity').val());
                data.LocationsId = $('#ddlCompanyLocation').val().toString();
                data.MobileNo = parseInt($('#txtContactNo').val());
                data.ZipCode = parseInt($('#txtZipCode').val());
                data.BankName = $('#txtBankName').val();
                data.BankBranch = $('#txtBankBranch').val();
                data.BankAccountNo = parseInt($('#txtAccountNo').val());
                data.BankIfsc = $('#txtBankIFSC').val();
                data.POC = $('#txtPOC').val();
                data.POCNo = parseInt($('#txtPOCNo').val());
                data.Customer = $('#chkCustomer').is(':checked');
                data.Vendor = $('#chkVendor').is(':checked');

                SaveUpdateCompanyDetails(data);
            });

            $("#btnUpdate").click(function () {

                data.Mode = "2";
                data.CompanyId = $('#hidHotelId').val();
                data.CompanyName = $('#txtCompanyNameUpdate').val();
                data.GstinNo = $('#txtGSTINUpdate').val();
                data.PanNo = $('#txtPanNoUpdate').val();//
                data.ServiceTaxNo = $('#txtServiceTaxNoUpdate').val();
                data.EmailId = $('#txtEmailIdUpdate').val();
                data.Address = $('#txtAddressUpdate').val();
                data.CountryId = parseInt($('#ddlCountryUpdate').val());
                data.StateId = parseInt($('#ddlStateUpdate').val());
                data.CityId = parseInt($('#ddlCityUpdate').val());
                data.LocationsId = $('#ddlCompanyLocationUpdate').toString();
                data.MobileNo = parseInt($('#txtContactNoUpdate').val());
                data.ZipCode = parseInt($('#txtZipCodeUpdate').val());
                data.BankName = $('#txtBankNameUpdate').val();
                data.BankBranch = $('#txtBankBranchUpdate').val();
                data.BankAccountNo = $('#txtAccountNoUpdate').val();
                data.BankIfsc = $('#txtBankIFSCUpdate').val();
                data.POC = $('#txtPOCUpdate').val();
                data.POCNo = parseInt($('#txtPOCNoUpdate').val());
                data.Customer = $('#chkCustomerUpdate').is(':checked');
                data.Vendor = $('#chkVendorUpdate').is(':checked');

                SaveUpdateCompanyDetails(data);
            });

            var ArrData = [];






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
                    $("#ddlQuotation").append('<option value="0">Select</option>');
                    for (var i = 0; i < len; i++) {
                        $("#ddlQuotation").append('<option value=' + getResult[i].QID + '>' + getResult[i].QNo + '</option>');
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



        function SaveUpdateCompanyDetails(data) {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/SaveUpdateCompanyDetailsNew",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        //GetCityDetails(0, "", 0);
                        GetCompanyDetails(0, "");
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


        //toc details
        function GetTOCDetails(QID) {
            var element = "";
            $("#tblCustomers > TBODY").empty();
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Requisition.aspx/GetTOCDetails",
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



    </script>

</asp:Content>

