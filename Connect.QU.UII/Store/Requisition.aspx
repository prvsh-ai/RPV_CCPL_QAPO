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
                                                <%-- <thead>
                                                    <tr>
                                                        <th style="width: 150px">Description Of Goods</th>
                                                        <th style="width: 150px">Qty</th>
                                                        <th style="width: 150px">HSN/SAC</th>
                                                        <th style="width: 150px">Rate/Unit</th>

                                                    </tr>
                                                </thead>--%>


                                                <tr>
                                                    <td>
                                                        <label class="control-label"> REQUISITION NUMBER</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtTaxableAmount" class="form-control" /></td>
                                                    <td>
                                                        <label class="control-label"> REQUIRED BY</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtTaxableAmount" class="form-control" /></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label class="control-label"> REQUISITION DATE</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtTaxableAmount" class="form-control" /></td>
                                                    <td>
                                                        <label class="control-label"> APPROVED BY</label>
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtTaxableAmount" class="form-control" /></td>
                                                </tr>
                                            </table>

                                        </div>
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


                            <div class="form-group" style="width: 100%; margin-top: 1%;">


                                <label class="label1" for="chkCustomer">Customer</label>
                                <input type="checkbox" name="chkCustomer" value="Customer" id="chkCustomer" />

                                <label class="label1" for="chkVendor">Vendor</label>
                                <input type="checkbox" name="chkVendor" value="Vendor" id="chkVendor" />
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
                            <h4 class="modal-title">Company Details Update</h4>
                        </div>


                        <div class="modal-body" style="padding: 1px;">
                            <div class="box box-solid">
                                <div class="box-body">
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
            GetCountryDetails(0, "");
            GetLocationDetails(0, "");
            GetCompanyDetails(0, "");

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
            $('#ddlCountry').change(function () {
                if ($('#ddlCountry').val() == 0) {
                    GetStateDetails(0, "", 0);
                }
                else {
                    GetStateDetails(0, "", $('#ddlCountry').val());
                }
            });
            $('#ddlState').change(function () {
                if ($('#ddlState').val() == 0) {
                    GetCityDetailsNew(0, "", 0);
                }
                else {
                    GetCityDetailsNew(0, "", $('#ddlState').val());
                }
            });

            $('#ddlCountryUpdate').change(function () {
                if ($('#ddlCountryUpdate').val() == 0) {
                    GetStateDetails(0, "", 0);
                }
                else {
                    GetStateDetails(0, "", $('#ddlCountryUpdate').val());
                }
            });
            $('#ddlStateUpdate').change(function () {
                if ($('#ddlStateUpdate').val() == 0) {
                    GetCityDetailsNew(0, "", 0);
                }
                else {
                    GetCityDetailsNew(0, "", $('#ddlStateUpdate').val());
                }
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

        function GetCityDetailsNew(CityId, CityName, StateId) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/GetCityDetails",
                type: "POST",
                data: "{CityId:" + CityId + ",CityName:'" + CityName + "',StateId:" + StateId + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;

                    $("#ddlCity").empty();
                    $("#ddlCityUpdate").empty();
                    $("#ddlCity").append('<option value="0">Select</option>');
                    $("#ddlCityUpdate").append('<option value="0">Select</option>');

                    for (var i = 0; i < len; i++) {
                        $("#ddlCity").append('<option value=' + getResult[i].CityId + '>' + getResult[i].CityName + '</option>');
                        $("#ddlCityUpdate").append('<option value=' + getResult[i].CityId + '>' + getResult[i].CityName + '</option>');
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function GetCountryDetails(CountryId, CountryName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/GetCountryDetails",
                type: "POST",
                data: "{CountryId:" + CountryId + ",CountryName:'" + CountryName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;

                    $("#ddlCountry").empty();
                    $("#ddlCountryUpdate").empty();
                    $("#ddlCountry").append('<option value="0">Select</option>');
                    $("#ddlCountryUpdate").append('<option value="0">Select</option>');

                    for (var i = 0; i < len; i++) {
                        $("#ddlCountry").append('<option value=' + getResult[i].CountryId + '>' + getResult[i].CountryName + '</option>');
                        $("#ddlCountryUpdate").append('<option value=' + getResult[i].CountryId + '>' + getResult[i].CountryName + '</option>');
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function GetStateDetails(StateId, StateName, CountryId) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/GetStateDetails",
                type: "POST",
                data: "{StateId:" + StateId + ",StateName:'" + StateName + "',CountryId:" + CountryId + "}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;

                    $("#ddlState").empty();
                    $("#ddlStateUpdate").empty();
                    $("#ddlState").append('<option value="0">Select</option>');
                    $("#ddlStateUpdate").append('<option value="0">Select</option>');

                    for (var i = 0; i < len; i++) {
                        $("#ddlState").append('<option value=' + getResult[i].StateId + '>' + getResult[i].StateName + '</option>');
                        $("#ddlStateUpdate").append('<option value=' + getResult[i].StateId + '>' + getResult[i].StateName + '</option>');
                    }
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }

        function GetLocationDetails(StateId, StateName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/GetLocationDetails",
                type: "POST",
                data: "{StateId:" + StateId + ",StateName:'" + StateName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;

                    $("#ddlCompanyLocation").empty();
                    $("#ddlCompanyLocationUpdate").empty();
                    $("#ddlCompanyLocationUpdate").append('<option value="0">Select</option>');

                    for (var i = 0; i < len; i++) {
                        $("#ddlCompanyLocation").append('<option value=' + getResult[i].StateId + '>' + getResult[i].StateName + '</option>');
                        $("#ddlCompanyLocationUpdate").append('<option value=' + getResult[i].StateId + '>' + getResult[i].StateName + '</option>');

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

        function GetCompanyDetails(CompanyID, CompanyName) {
            var element = "";

            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/GetCompanyDetailsNew",
                type: "POST",
                data: "{CompanyID:" + CompanyID + ",CompanyName:'" + CompanyName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#CityTableId').empty();

                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>CompanyName</th>';
                    element = element + '<th>Gstin No</th>';
                    element = element + '<th>Pan No</th>';
                    element = element + '<th>Vendor</th>';
                    element = element + '<th>Customer</th>';
                    element = element + '<th>Action</th>';

                    element = element + '</tr></thead><tbody>';

                    if (len == 0) {
                        element = element + '<tr><td colspan="3"><p class="text-center">No Company Data Available</p></td></tr>'
                    }

                    for (var i = 0; i < len; i++) {

                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].CompanyName + '</td>';
                        element = element + '<td>' + getResult[i].GstinNo + '</td>';
                        element = element + '<td>' + getResult[i].PanNo + '</td>';
                        element = element + '<td>' + getResult[i].Customer + '</td>';
                        element = element + '<td>' + getResult[i].Vendor + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetCompanyDetailsForUpdate(' + getResult[i].CompanyId + ',\'' + getResult[i].CompanyName + '\',\'' + getResult[i].GstinNo + '\',\'' + getResult[i].PanNo + '\',\'' + getResult[i].ServiceTaxNo + '\',\'' + getResult[i].EmailId + '\',' + getResult[i].MobileNo + ',' + getResult[i].ZipCode + ',\'' + getResult[i].Address + '\',' + getResult[i].CountryId + ',' + getResult[i].StateId + ',' + getResult[i].CityId + ',\'' + getResult[i].LocationsId + '\',\'' + getResult[i].BankName + '\',\'' + getResult[i].BankBranch + '\',\'' + getResult[i].BankAccountNo + '\',\'' + getResult[i].BankIfsc + '\',\'' + getResult[i].POC + '\',' + getResult[i].POCNo + ',' + getResult[i].Customer + ',' + getResult[i].Vendor + '); return false;" data-toggle="modal" data-target="#CityModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
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

        function GetCompanyDetailsForUpdate(CompanyID, CompanyName, GstinNo, PanNo, ServiceTaxNo, EmailId, MobiletNo, ZipCode, Address, CountryId, StateId, CityId, LocationsId, BankName, BankBranch, BankAccountNo, BankIfsc, Poc, PocNo, Customer, Vendor) {

            GetStateDetails(0, "", CountryId);
            GetCityDetailsNew(0, "", StateId);

            $('#hidHotelId').val(CompanyID);
            $('#txtCompanyNameUpdate').val(CompanyName);
            $('#txtGSTINNoUpdate').val(GstinNo);
            $('#txtPanNoUpdate').val(PanNo);
            $('#txtServiceTaxNoUpdate').val(ServiceTaxNo);
            $('#txtEmailIDUpdate').val(EmailId);
            $('#txtContactNoUpdate').val(MobiletNo);
            $('#txtZipCodeUpdate').val(ZipCode);
            $('#txtAddressUpdate').val(Address);
            $('#ddlCountryUpdate').val(CountryId);
            $('#ddlStateUpdate').val(StateId);
            $('#ddlCityUpdate').val(CityId);
            $('#ddlCompanyLocation').val(LocationsId); //
            $('#txtBankNameUpdate').val(BankName);
            $('#txtBankBranchUpdate').val(BankBranch);
            $('#txtAccountNoUpdate').val(BankAccountNo);
            $('#txtBankIFSCUpdate').val(BankIfsc);
            $('#txtPOCUpdate').val(Poc);
            $('#txtPOCNoUpdate').val(PocNo);
            $('#chkCustomerUpdate').attr('checked', Customer);
            $('#chkVendorUpdate').attr('checked', Vendor);

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

    </script>

</asp:Content>

