<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="Company.aspx.cs" Inherits="Connect.QU.UII.Page.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Company Details</title>
    <style type="text/css">
        .selectBox {
         max-width:187px;
        }
    </style>
    <%-- <link href="../css/Admin.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="box box-solid">
                        <div class="box-body">
                            <div class="form-inline">
                                <div class="row">
                                    <div class="form-group form-check-inline col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="chkCustomer" value="Customer" id="chkCustomer" />
                                            <label class="form-check-label" for="chkCustomer">
                                                Customer
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-check-inline col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="checkbox" class="form-check-input" name="chkVendor" value="Vendor" id="chkVendor" />
                                            <label class="form-check-label" for="chkVendor">
                                                Vendor
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtCompanyName">Company Name&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtCompanyName" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtGSTIN">GST No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtGSTIN" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtPanNo">PAN No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtPanNo" class="form-control" type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtEmailId">Email Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtEmailId" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtAddress">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtAddress" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtContactNo">Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtContactNo" class="form-control integer" type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlCountry">Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlCountry" name="ddlCountryName" class="selectBox form-control"></select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlState">State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlState" name="ddlStateName" class="selectBox form-control">
                                           <option value="0">------------Select------------</option>

                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label class="control-label" for="ddlCity">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlCity" name="ddlCityName" class="selectBox form-control">
                                            <option value="0">------------Select------------</option>

                                        </select>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlCompanyLocation">Site Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlCompanyLocation" name="ddlCompanyLocationName" class="selectBox form-control" multiple="multiple">
                                             <option value="0">------------Select------------</option>

                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtZipCode">Pincode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtZipCode" class="form-control integer" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtPOC">Contact Person&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtPOC" class="form-control" type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtPOCNo">Contact No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtPOCNo" class="form-control" type="text" />
                                    </div>
                                </div>
                                <br />
                                <hr style="border-top: 3px solid #bbb;" />
                                <div class="row bank">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtBankName">Bank Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtBankName" class="form-control " type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtBankBranch">Bank Branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtBankBranch" class="form-control" type="text" />

                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtAccountNo">Account No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtAccountNo" class="form-control" type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="row bank">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtBankIFSC">Bank IFSC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtBankIFSC" class="form-control " type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
            <br />
            <div class="row">

                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <table id="CityTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable" ></table>
                </div>
            </div>

           
            <div id="CityModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Company Details Update</h4>
                        </div>
                        <div class="modal-body" style="padding: 1px;">
                            <div class="box box-solid">
                                <div class="box-body">

                                    <div class="form-inline">
                                        <div class="row">
                                            <div class="form-group form-check-inline col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="chkCustomerUpdate" value="Customer" id="chkCustomerUpdate" />
                                                    <label class="form-check-label" for="chkCustomerUpdate">
                                                        Customer
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group form-check-inline col-lg-6 col-sm-6 col-xs-6 col-md-6">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="checkbox" class="form-check-input" name="chkVendorUpdate" value="Vendor" id="chkVendorUpdate" />
                                                    <label class="form-check-label" for="chkVendorUpdate">
                                                        Vendor
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtCompanyNameUpdate">Company Name&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtCompanyNameUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtGSTINNoUpdate">GST No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtGSTINNoUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtPanNoUpdate">PAN No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtPanNoUpdate" class="form-control" type="text" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtEmailIDUpdate">Email Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtEmailIDUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtAddressUpdate">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtAddressUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtContactNoUpdate">Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtContactNoUpdate" class="form-control integer" type="text" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="ddlCountryUpdate">Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <select id="ddlCountryUpdate" name="ddlCountryName" class="selectBox form-control"></select>
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="ddlStateUpdate">State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <select id="ddlStateUpdate" name="ddlStateName" class="selectBox form-control">
                                                                                                 <option value="0">------------Select------------</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label class="control-label" for="ddlCityUpdate">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <select id="ddlCityUpdate" name="ddlCityUpdateName" class="selectBox form-control">
                                                                                                 <option value="0">------------Select------------</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="ddlCompanyLocationUpdate">Site Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <select id="ddlCompanyLocationUpdate" name="ddlCompanyLocationUpdate" class="selectBox form-control" multiple="multiple">
                                             <option value="0">------------Select------------</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtZipCodeUpdate">Pincode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtZipCodeUpdate" class="form-control integer" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtPOCUpdate">Contact Person&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtPOCUpdate" class="form-control" type="text" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtPOCNoUpdate">Contact No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtPOCNoUpdate" class="form-control" type="text" />
                                            </div>
                                        </div>
                                        <br />
                                        <hr style="border-top: 3px solid #bbb;" />
                                        <div class="row bank">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtBankNameUpdate">Bank Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtBankNameUpdate" class="form-control " type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtBankBranchUpdate">Bank Branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtBankBranchUpdate" class="form-control" type="text" />

                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtAccountNoUpdate">Account No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtAccountNoUpdate" class="form-control" type="text" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row bank">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtBankIFSCUpdate">Bank IFSC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtBankIFSCUpdate" class="form-control " type="text" />
                                            </div>
                                        </div>
                                        <br />
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
        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>
        <input id="hidHotelId" type="hidden" />
    </div>
    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
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

            //checkNameEmpty("#txtCompanyName");
            //checkValidEmail("#txtEmailId");
            //checkNameEmpty("#txtAddress");
            //checkvalidPhoneNumber("#txtContactNo");
            //checkNameEmpty("#txtZipCode"); ///integer
            //checkNameEmpty("#txtBankName");
            //checkNameEmpty("#txtBankBranch");
            //checkNameEmpty("#txtAccountNo"); //integer
            //checkNameEmpty("#txtBankIFSC");
            //checkNameEmpty("#txtPOC");
            //checkNameEmpty("#txtPOCNo"); //integer
            GetCountryDetails(0, "");
            GetLocationDetails(0, "");
            GetCompanyDetails(0, "");
            var data = {};
            $(function () {
                $('#ddlCompanyLocation').select2({
                    placeholder: "Select Site",
                    maximumInputLength: 1
                });
                $('#ddlCompanyLocationUpdate').select2({
                    placeholder: "Select Site",
                    maximumInputLength: 1
                });
            });

            $('#chkCustomer').change(function () {
                if ($('#chkCustomer').prop('checked')) {

                    $('.bank').hide();

                }
                else {
                    $('.bank').show();

                }
            });

            $('#chkCustomerUpdate').change(function () {
                if ($('#chkCustomerUpdate').prop('checked')) {

                    $('.bank').hide();
                }
                else {
                    $('.bank').show();
                }
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
                var validations = Validation_Company(
                "#txtCompanyName",
                "#txtEmailId",
                "#txtAddress",
                "#ddlCountry",
                "#ddlState",
                "#ddlCity",
                "#ddlCompanyLocation",
                "#txtContactNo",
                "#txtZipCode",
                "#txtPOC",
                "#txtPOCNo"
                );
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = "1";
                data.CompanyId = 0;
                data.CompanyName = $('#txtCompanyName').val();
                data.GstinNo = $('#txtGSTIN').val();
                data.PanNo = $('#txtPanNo').val();//
                data.ServiceTaxNo = 0;
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
                var validations = Validation_Company(
                "#txtCompanyNameUpdate",
                "#txtEmailIDUpdate",
                "#txtAddressUpdate",
                "#ddlCountryUpdate",
                "#ddlStateUpdate",
                "#ddlCityUpdate",
                "#ddlCompanyLocationUpdate",
                "#txtContactNoUpdate",
                "#txtZipCodeUpdate",
                "#txtPOCUpdate",
                "#txtPOCNoUpdate"
                );
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = "2";
                data.CompanyId = $('#hidHotelId').val();
                data.CompanyName = $('#txtCompanyNameUpdate').val();
                data.GstinNo = $('#txtGSTINNoUpdate').val();
                data.PanNo = $('#txtPanNoUpdate').val();//
                data.ServiceTaxNo = 0;
                data.EmailId = $('#txtEmailIDUpdate').val();
                data.Address = $('#txtAddressUpdate').val();
                data.CountryId = parseInt($('#ddlCountryUpdate').val());
                data.StateId = parseInt($('#ddlStateUpdate').val());
                data.CityId = parseInt($('#ddlCityUpdate').val());
                data.LocationsId = $('#ddlCompanyLocationUpdate').val().toString();
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
                async: false,
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCity").empty();
                    $("#ddlCityUpdate").empty();
                    $("#ddlCity").append('<option value="0">------------Select------------</option>');
                    $("#ddlCityUpdate").append('<option value="0">------------Select------------</option>');
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
                async: false,
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCountry").empty();
                    $("#ddlCountryUpdate").empty();
                    $("#ddlCountry").append('<option value="0">------------Select------------</option>');
                    $("#ddlCountryUpdate").append('<option value="0">------------Select------------</option>');
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
                async: false,
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlState").empty();
                    $("#ddlStateUpdate").empty();
                    $("#ddlState").append('<option value="0">------------Select------------</option>');
                    $("#ddlStateUpdate").append('<option value="0">------------Select------------</option>');
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
                async: false,
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCompanyLocation").empty();
                    $("#ddlCompanyLocationUpdate").empty();
                    $("#ddlCompanyLocation").append('<option value="0">------------Select------------</option>');
                    $("#ddlCompanyLocationUpdate").append('<option value="0">------------Select------------</option>');
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
        function GetCompanyDetails(CompanyID, CompanyName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/GetCompanyDetailsNew",
                type: "POST",
                data: "{CompanyID:" + CompanyID + ",CompanyName:'" + CompanyName + "'}",
                dataType: "json",
                async: false,
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
            $('#ddlCountryUpdate').val(CountryId); //pravesh
            $('#ddlStateUpdate').val(StateId);
            $('#ddlCityUpdate').val(CityId);
            $('#txtBankNameUpdate').val(BankName);
            $('#txtBankBranchUpdate').val(BankBranch);
            $('#txtAccountNoUpdate').val(BankAccountNo);
            $('#txtBankIFSCUpdate').val(BankIfsc);
            $('#txtPOCUpdate').val(Poc);
            $('#txtPOCNoUpdate').val(PocNo);
            var ArrayOfInts = LocationsId.split(',').map(Number);
            $.each($("#ddlCompanyLocationUpdate"), function () {
                $(this).select2('val', ArrayOfInts);
            });
            $('#chkCustomerUpdate').prop('checked', Customer);
            $('#chkVendorUpdate').prop('checked', Vendor);
        }
        function SaveUpdateCompanyDetails(data) {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Company.aspx/SaveUpdateCompanyDetailsNew",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                async: false,
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        GetCompanyDetails(0, "");
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
        function ClearInputBoxValues() {
            $('input[type=text]').each(function () {
                $(this).val('');
            });
            $('select').each(function () {
                $(this).val('0');
            });
        }

    </script>

</asp:Content>

