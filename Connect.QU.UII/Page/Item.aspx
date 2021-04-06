<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="Item.aspx.cs" Inherits="Connect.QU.UII.Page.Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Item Details</title>
    <style type="text/css">
        /*.form-control {
            width: 159px !important;
        }

        .btn {
            margin-left: 33px;
        }

        .selectBox {
            display: inline-block;
            width: 159px;
            vertical-align: middle;
            height: 30px;
        }

        .select2 {
            width: 159px !important;
        }*/
        .selectBox {
            max-width: 187px;
        }

        .txttimerClass {
            width: 119px;
            height: 30px;
        }
    </style>
    <%--    <link href="../css/Admin.css" rel="stylesheet" />--%>
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
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="radio" class="form-check-input" name="inlineRadioOptions" value="option1" id="radStock" />
                                            <label class="form-check-label" for="radStock">
                                                Stock
                                            </label>
                                        </div>


                                    </div>
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="radio" class="form-check-input" name="inlineRadioOptions" value="option2" id="radService" />
                                            <label class="form-check-label" for="radService">
                                                Service
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtItemName">Item Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtItemName" class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlCategoryId">Category No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlCategoryId" name="ddlCategoryName" class="selectBox form-control"></select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtLastPrice">List Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtLastPrice" class="form-control integer" type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlGstApplicable">Gst Applicable&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlGstApplicable" class="selectBox form-control" name="ddlGstApplicableName">
                                            <option value="0">------------Select------------</option>
                                            <option id="GstApplicableDefault" value="1" selected="selected">Applicable</option>
                                            <option id="GstApplicable" value="0">Not Applicable</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlGstRate">Gst Rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlGstRate" class="selectBox form-control" name="ddlGstRateName">
                                            <option id="SelectDefault" selected="selected" value="0">------------Select------------</option>
                                            <option id="GstOne" value="5">5 %</option>
                                            <option id="GstTwo" value="9">9 %</option>
                                            <option id="GstThree" value="12">12 %</option>
                                            <option id="GstFour" value="18">18 %</option>
                                            <option id="GstFive" value="28">28 %</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                      
                                        <label for="txtHsnCode">HSN Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtHsnCode" class="form-control" type="text" />
                                        

                                    </div>
                                </div>
                                <br />

                                <div class="row">

                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtPQ">Purchase Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtPQ" class="form-control integer" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtIQ">Issuing Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtIQ" class="form-control integer" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtInStockQuantity">Opening Stock&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtInStockQuantity" class="form-control integer" type="text" />
                                    </div>


                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtEffectiveFrom">Expiry From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <div class='input-group date AppFormdatetimepicker' id='txtValidityFrom'>
                                            <input type='text' class="txttimerClass" id="txtEffectiveFrom" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtEffectiveTo">Expiry Till&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <div class='input-group date AppFormdatetimepicker' id='txtValidityTo'>
                                            <input type='text' class="txttimerClass" id="txtEffectiveTo" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>


                                    <%--                                     <label class="label1" for="chkApprove">Approve</label>
                                <input type="checkbox" name="chkApprove" value="YES" id="chkApprove" />--%>
                                </div>
                                <br />
                                <hr style="border-top: 3px solid #bbb;" />


                                <div id="divSpecification">
                                    <div class="row">
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtBrand">Brand&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtBrand" class="form-control " type="text" />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtType">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtType" class="form-control" type="text" />

                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtName">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtName" class="form-control" type="text" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtNumber">Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtNumber" class="form-control integer" type="text" />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtColor">Color&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtColor" class="form-control " type="text" />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtSize">Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtSize" class="form-control " type="text" />
                                        </div>
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
                    <table id="CityTableId" class="table table-striped cf table-bordered table-striped table-responsive dataTable"></table>
                </div>
            </div>

            <div id="CityModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Item Details Update</h4>
                        </div>
                        <div class="modal-body" style="padding: 1px;">
                            <div class="box box-solid">
                                <div class="box-body">

                                    <div class="form-inline">
                                        <div class="row">
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="radio" class="form-check-input" name="inlineRadioOptionsUpdate" value="option1Update" id="radStockUpdate" />
                                                    <label class="form-check-label" for="radStockUpdate">
                                                        Stock
                                                    </label>
                                                </div>


                                            </div>
                                            <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <input type="radio" class="form-check-input" name="inlineRadioOptionsUpdate" value="option2Update" id="radServiceUpdate" />
                                                    <label class="form-check-label" for="radServiceUpdate">
                                                        Service
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtItemNameUpdate">Item Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtItemNameUpdate" class="form-control" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="ddlCategoryIdUpdate">Category No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <select id="ddlCategoryIdUpdate" name="ddlCategoryName" class="selectBox form-control"></select>
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtLastPriceUpdate">List Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtLastPriceUpdate" class="form-control integer" type="text" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="ddlGstApplicableUpdate">Gst Applicable&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <select id="ddlGstApplicableUpdate" class="selectBox form-control" name="ddlGstApplicableNameUpdate">
                                                    <option value="0">------------Select------------</option>
                                                    <option id="GstApplicableDefaultUpdate" value="1" selected="selected">Applicable</option>
                                                    <option id="GstApplicableUpdate" value="0">Not Applicable</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="ddlGstRateUpdate">Gst Rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <select id="ddlGstRateUpdate" class="selectBox form-control" name="ddlGstRateNameUpdate">
                                                    <option id="SelectDefaultUpdate" selected="selected" value="0">------------Select------------</option>
                                                    <option id="GstOneUpdate" value="5">5 %</option>
                                                    <option id="GstTwoUpdate" value="9">9 %</option>
                                                    <option id="GstThreeUpdate" value="12">12 %</option>
                                                    <option id="GstFourUpdate" value="18">18 %</option>
                                                    <option id="GstFiveUpdate" value="28">28 %</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                
                                                      <label for="txtHsnCodeUpdate">HSN Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtHsnCodeUpdate" class="form-control" type="text" />

                                            </div>
                                        </div>
                                        <br />

                                        <div class="row">

                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtPQUpdate">Purchase Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtPQUpdate" class="form-control integer" type="text" />
                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                             <label for="txtIQUpdate">Issuing Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtIQUpdate" class="form-control integer" type="text" />

                                            </div>
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtInStockQuantityUpdate">Opening Stock&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <input id="txtInStockQuantityUpdate" class="form-control integer" type="text" />
                                            </div>


                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtEffectiveFromUpdate">Expiry From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <div class='input-group date AppFormdatetimepicker' id='txtValidityFromUpdate'>
                                                    <input type='text' class="txttimerClass" id="txtEffectiveFromUpdate" />
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                <label for="txtEffectiveToUpdate">Expiry Till&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                <div class='input-group date AppFormdatetimepicker' id='txtValidityToUpdate'>
                                                    <input type='text' class="txttimerClass" id="txtEffectiveToUpdate" />
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>


                                            <%--                                     <label class="label1" for="chkApprove">Approve</label>
                                <input type="checkbox" name="chkApprove" value="YES" id="chkApprove" />--%>
                                        </div>
                                        <br />
                                        <hr style="border-top: 3px solid #bbb;" />


                                        <div id="divSpecificationUpdate">
                                            <div class="row">
                                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                    <label for="txtBrandUpdate">Brand&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                    <input id="txtBrandUpdate" class="form-control " type="text" />
                                                </div>
                                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                    <label for="txtTypeUpdate">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                    <input id="txtTypeUpdate" class="form-control" type="text" />

                                                </div>
                                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                    <label for="txtNameUpdate">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                    <input id="txtNameUpdate" class="form-control" type="text" />
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                    <label for="txtNumberUpdate">Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                    <input id="txtNumberUpdate" class="form-control integer" type="text" />
                                                </div>
                                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                    <label for="txtColorUpdate">Color&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                    <input id="txtColorUpdate" class="form-control " type="text" />
                                                </div>
                                                <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                                    <label for="txtSizeUpdate">Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                                    <input id="txtSizeUpdate" class="form-control " type="text" />
                                                </div>
                                            </div>
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
            //$('.integer').keyup(function (e) {
            //    if (/\D/g.test(this.value)) {
            //        this.value = this.value.replace(/\D/g, '');
            //    }
            //});
            //checkNameEmpty("#txtItemName");
            //checkNameEmpty("#txtLastPrice"); //integer
            //checkNameEmpty("#txtHsnCode");
            //checkNameEmpty("#txtEffectiveFrom");
            //checkNameEmpty("#txtEffectiveTo");
            //checkNameEmpty("#txtInStockQuantity");
            GetItemDetails(0, "");
            var data = {};
            $('#divSpecification').hide();
            $("#radStock").attr('checked', true);
            $('#ddlGstApplicable').change(function () {
                if ($('#ddlGstApplicable').val() == 1) {
                    $("#ddlGstRate").removeAttr('disabled');
                }
                else {
                    $('#ddlGstRate').val('0');
                    $("#ddlGstRate").prop('disabled', 'disabled');
                }
            });
            $('#ddlGstApplicableUpdate').change(function () {
                if ($('#ddlGstApplicableUpdate').val() == 1) {
                    $("#ddlGstRateUpdate").removeAttr('disabled');
                }
                else {
                    $('#ddlGstRateUpdate').val('0');
                    $("#ddlGstRateUpdate").prop('disabled', 'disabled');
                }
            });
            $('#ddlCategoryId').change(function () {
                if ($('#ddlCategoryId').val() == 0) {
                    $('#divSpecification').hide();
                    $("#txtHsnCode").val("");
                }
                else {
                    GetSpecificationDetails($('#ddlCategoryId').val(), "");
                    $('#divSpecification').show();
                }
            });
            $('#ddlCategoryIdUpdate').change(function () {
                if ($('#ddlCategoryIdUpdate').val() == 0) {
                    $('#divSpecificationUpdate').hide();
                    $("#txtHsnCodeUpdate").val("");
                }
                else {
                    GetSpecificationDetailsUpdate($('#ddlCategoryIdUpdate').val(), "");
                    $('#divSpecificationUpdate').show();
                }
            });
            GetCategoryDetails(0, "");
            $(function () {
                $('#txtValidityFrom').datetimepicker();
                $('#txtValidityTo').datetimepicker();
                $('#txtValidityFromUpdate').datetimepicker();
                $('#txtValidityToUpdate').datetimepicker();
            });
            $("#btnSave").click(function () {
                var validations = Validation_Item(
               "#txtItemName",
               "#ddlCategoryId",
               "#txtLastPrice",
               "#ddlGstApplicable",
               "#ddlGstRate",
               "#txtEffectiveFrom",
               "#txtEffectiveTo"
               );
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 1;
                data.ItemId = 0;
                data.ItemName = $('#txtItemName').val();
                data.CategoryId = $('#ddlCategoryId').val();
                data.LastPrice = $('#txtLastPrice').val();//
                data.GstApplicable = $('#ddlGstApplicable').val();
                data.GstRate = $('#ddlGstRate').val();
                data.RadStock = $('#radStock').is(':checked');
                data.RadService = $('#radService').is(':checked');
                data.EffectiveStartDate = $('#txtEffectiveFrom').val();
                data.EffectiveEndDate = $('#txtEffectiveTo').val();
                data.IQ = $('#txtIQ').val();
                data.PQ = $('#txtPQ').val();
                data.HsnCode = $('#txtHsnCode').val();
                data.Brand = $('#txtBrand').val();
                data.Type = $('#txtType').val();
                data.Name = $('#txtName').val();
                data.Number = $('#txtNumber').val();
                data.Color = $('#txtColor').val();
                data.Size = $('#txtSize').val();
                data.InStockQuantity = $('#txtInStockQuantity').val();
                data.Approved = $('#chkApprove').prop("checked");
                SaveUpdateItemDetails(
                  data);
            });
            $("#btnUpdate").click(function () {
                var validations = Validation_Item(
              "#txtItemNameUpdate",
              "#ddlCategoryIdUpdate",
              "#txtLastPriceUpdate",
              "#ddlGstApplicableUpdate",
              "#ddlGstRateUpdate",
              "#txtEffectiveFromUpdate",
              "#txtEffectiveToUpdate"
              );
                if (validations) {
                }
                else {
                    return false;
                }
                data.Mode = 2;
                data.ItemId = $('#hidHotelId').val();
                data.ItemName = $('#txtItemNameUpdate').val();
                data.CategoryId = $('#ddlCategoryIdUpdate').val();
                data.LastPrice = $('#txtLastPriceUpdate').val();//
                data.GstApplicable = $('#ddlGstApplicableUpdate').val();
                data.GstRate = $('#ddlGstRateUpdate').val();
                data.RadStock = $('#radStockUpdate').is(':checked');
                data.RadService = $('#radServiceUpdate').is(':checked');
                data.EffectiveStartDate = $('#txtEffectiveFromUpdate').val();
                data.EffectiveEndDate = $('#txtEffectiveToUpdate').val();
                data.IQ = $('#txtIQUpdate').val();
                data.PQ = $('#txtPQUpdate').val();
                data.HsnCode = $('#txtHsnCodeUpdate').val();
                data.Brand = $('#txtBrandUpdate').val();
                data.Type = $('#txtTypeUpdate').val();
                data.Name = $('#txtNameUpdate').val();
                data.Number = $('#txtNumberUpdate').val();
                data.Color = $('#txtColorUpdate').val();
                data.Size = $('#txtSizeUpdate').val();
                data.InStockQuantity = $('#txtInStockQuantityUpdate').val();
                data.Approved = $('#chkApproveUpdate').prop("checked");
                SaveUpdateItemDetails(
                  data);
               
            });
            var ArrData = [];
        });
        function GetSpecificationDetails(CategoryID, CategoryName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/GetCategoryDetails",
                type: "POST",
                data: "{CategoryID:" + CategoryID + ",CategoryName:'" + CategoryName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    for (var i = 0; i < len; i++) {
                        $("#txtHsnCode").val(getResult[i].Code);
                        if (getResult[i].Brand != undefined && getResult[i].Brand) {
                            $("#txtBrand").prop('disabled', false);
                        }
                        else {
                            $("#txtBrand").val("");
                            $("#txtBrand").prop('disabled', true);
                        }
                        if (getResult[i].Type != undefined && getResult[i].Type) {
                            $("#txtType").prop('disabled', false);
                        }
                        else {
                            $("#txtType").val("");
                            $("#txtType").prop('disabled', true);
                        }
                        if (getResult[i].Number != undefined && getResult[i].Number) {
                            $("#txtNumber").prop('disabled', false);
                        }
                        else {
                            $("#txtNumber").val("");
                            $("#txtNumber").prop('disabled', true);
                        }
                        if (getResult[i].Name != undefined && getResult[i].Name) {
                            $("#txtName").prop('disabled', false);
                        }
                        else {
                            $("#txtName").val("");
                            $("#txtName").prop('disabled', true);
                        }
                        if (getResult[i].Color != undefined && getResult[i].Color) {
                            $("#txtColor").prop('disabled', false);
                        }
                        else {
                            $("#txtColor").val("");
                            $("#txtColor").prop('disabled', true);
                        }
                        if (getResult[i].Size != undefined && getResult[i].Size) {
                            $("#txtSize").prop('disabled', false);
                        }
                        else {
                            $("#txtSize").val("");
                            $("#txtSize").prop('disabled', true);
                        }
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetSpecificationDetailsUpdate(CategoryID, CategoryName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/GetCategoryDetails",
                type: "POST",
                data: "{CategoryID:" + CategoryID + ",CategoryName:'" + CategoryName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;

                    for (var i = 0; i < len; i++) {
                        $("#txtHsnCodeUpdate").val(getResult[i].Code);
                        if (getResult[i].Brand != undefined && getResult[i].Brand) {
                            $("#txtBrandUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtBrandUpdate").val("");
                            $("#txtBrandUpdate").prop('disabled', true);
                        }
                        if (getResult[i].Type != undefined && getResult[i].Type) {
                            $("#txtTypeUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtTypeUpdate").val("");
                            $("#txtTypeUpdate").prop('disabled', true);
                        }
                        if (getResult[i].Number != undefined && getResult[i].Number) {
                            $("#txtNumberUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtNumberUpdate").val("");
                            $("#txtNumberUpdate").prop('disabled', true);
                        }
                        if (getResult[i].Name != undefined && getResult[i].Name) {
                            $("#txtNameUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtNameUpdate").val("");
                            $("#txtNameUpdate").prop('disabled', true);
                        }
                        if (getResult[i].Color != undefined && getResult[i].Color) {
                            $("#txtColorUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtColorUpdate").val("");
                            $("#txtColorUpdate").prop('disabled', true);
                        }
                        if (getResult[i].Size != undefined && getResult[i].Size) {
                            $("#txtSizeUpdate").prop('disabled', false);
                        }
                        else {
                            $("#txtSizeUpdate").val("");
                            $("#txtSizeUpdate").prop('disabled', true);
                        }
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }
        function GetCategoryDetails(CategoryID, CategoryName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/GetCategoryDetails",
                type: "POST",
                data: "{CategoryID:" + CategoryID + ",CategoryName:'" + CategoryName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCategoryId").empty();
                    $("#ddlCategoryIdUpdate").empty();
                    $("#ddlCategoryId").append('<option value="0">------------Select------------</option>');
                    $("#ddlCategoryIdUpdate").append('<option value="0">------------Select------------</option>');
                    for (var i = 0; i < len; i++) {
                        $("#ddlCategoryId").append('<option value=' + getResult[i].CategoryID + '>' + getResult[i].CategoryName + '</option>');
                        $("#ddlCategoryIdUpdate").append('<option value=' + getResult[i].CategoryID + '>' + getResult[i].CategoryName + '</option>');
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
                url: "Item.aspx/GetItemDetails",
                type: "POST",
                data: "{ItemID:" + ItemID + ",ItemName:'" + ItemName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#CityTableId').empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Item Name</th>';
                    element = element + '<th>Category</th>';
                    element = element + '<th>Gst Applicable</th>';
                    element = element + '<th>HSN</th>';
                    element = element + '<th>Issuing Qty</th>';
                    element = element + '<th>Purchase Qty</th>';
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
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].ItemName + '</td>';
                        element = element + '<td>' + getResult[i].CategoryName + '</td>';
                        if (getResult[i].GstApplicable == "1") {
                            element = element + '<td>Yes</td>';
                        }
                        else {
                            element = element + '<td>No</td>';
                        }
                        element = element + '<td>' + getResult[i].HsnCode + '</td>';
                        element = element + '<td>' + getResult[i].IQ + '</td>';
                        element = element + '<td>' + getResult[i].PQ + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetItemDetailsForUpdate(' + getResult[i].ItemId + ',\'' + getResult[i].ItemName + '\',' + getResult[i].CategoryId + ',\'' + getResult[i].CategoryName + '\',' + getResult[i].LastPrice + ',' + getResult[i].GstApplicable + ',' + getResult[i].GstRate + ',' + getResult[i].RadStock + ',' + getResult[i].RadService + ',\'' + getResult[i].IQ + '\',\'' + getResult[i].PQ + '\',\'' + getResult[i].HsnCode + '\',\'' + getResult[i].EffectiveStartDate + '\',\'' + getResult[i].EffectiveEndDate + '\',\'' + getResult[i].Brand + '\',\'' + getResult[i].Type + '\',\'' + getResult[i].Name + '\',\'' + getResult[i].Number + '\',\'' + getResult[i].Color + '\',\'' + getResult[i].Size + '\',' + getResult[i].InStockQuantity + ',' + getResult[i].Approved + '); return false;" data-toggle="modal" data-target="#CityModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
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
        function GetItemDetailsForUpdate(ItemID, ItemName, CategoryId, CategoryName, LastPrice, GstApplicable, GstRate, RadStock, RadService, IQ, PQ, HsnCode, EffectiveStartDate, EffectiveEndDate, Brand, Type, Name, Number, Color, Size, InStockQuantity, Approved) {
            $('#hidHotelId').val(ItemID);
            $('#txtItemNameUpdate').val(ItemName);
            $('#ddlCategoryIdUpdate').val(CategoryId);
            $('#txtLastPriceUpdate').val(LastPrice);
            $('#ddlGstApplicableUpdate').val(GstApplicable);
            $('#ddlGstRateUpdate').val(GstRate);
            $('#radStockUpdate').prop('checked', RadStock);
            $('#radServiceUpdate').prop('checked', RadService);
            $('#txtEffectiveFromUpdate').val(GetProperDate(EffectiveStartDate));
            $('#txtEffectiveToUpdate').val(GetProperDate(EffectiveEndDate));
            $('#txtIQUpdate').val(IQ);
            $('#txtPQUpdate').val(PQ);
            $('#txtHsnCodeUpdate').val(HsnCode);
            $('#txtBrandUpdate').val(Brand);
            $('#txtTypeUpdate').val(Type);
            $('#txtNameUpdate').val(Name);
            $('#txtNumberUpdate').val(Number);
            $('#txtColorUpdate').val(Color);
            $('#txtSizeUpdate').val(Size);
            $('#txtInStockQuantityUpdate').val(InStockQuantity);
            $('#chkApproveUpdate').prop('checked', Approved);
        }
        function SaveUpdateItemDetails(data) {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Item.aspx/SaveUpdateItemDetails",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        GetItemDetails(0, "");
                        ClearInputBoxValues();
                        $('#CityModal').modal('hide');
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

