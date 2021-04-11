<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="ItemApproval.aspx.cs" Inherits="Connect.QU.UII.Page.ItemApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Item Approval</title>
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
            <div class="container" style="margin-top: 5%; margin-bottom: 1%; width: 100%;">
                <table id="tblApprove" class="table table-striped cf table-bordered table-striped table-responsive dataTable" style="table-layout: fixed"></table>
            </div>

            <div class="row" id="ItemForm">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                    <div class="box box-solid">
                        <div class="box-body">
                            <div class="form-inline">
                                <div class="row">
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="radio" disabled class="form-check-input" name="inlineRadioOptions" value="option1" id="radStock" />
                                            <label class="form-check-label" for="radStock">
                                                Stock
                                            </label>
                                        </div>


                                    </div>
                                    <div class="form-group form-check-inline col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="radio" disabled class="form-check-input" name="inlineRadioOptions" value="option2" id="radService" />
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
                                        <input id="txtItemName" disabled class="form-control" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlCategoryId">Category No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlCategoryId" disabled name="ddlCategoryName" class="selectBox form-control"></select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtLastPrice">List Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtLastPrice" disabled class="form-control integer" type="text" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlGstApplicable">Gst Applicable&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlGstApplicable" disabled class="selectBox form-control" name="ddlGstApplicableName">
                                            <option value="0">------------Select------------</option>
                                            <option id="GstApplicableDefault" value="1" selected="selected">Applicable</option>
                                            <option id="GstApplicable" value="0">Not Applicable</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="ddlGstRate">Gst Rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <select id="ddlGstRate" disabled class="selectBox form-control" name="ddlGstRateName">
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
                                        <input id="txtHsnCode" disabled class="form-control" type="text" />


                                    </div>
                                </div>
                                <br />

                                <div class="row">

                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtPQ">Purchase Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtPQ" disabled class="form-control integer" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtIQ">Issuing Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtIQ" disabled class="form-control integer" type="text" />
                                    </div>
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtInStockQuantity">Opening Stock&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="txtInStockQuantity" disabled class="form-control integer" type="text" />
                                    </div>


                                </div>
                                <br />
                                <div class="row">
                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtEffectiveFrom">Expiry From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <div class='input-group date AppFormdatetimepicker' id='txtValidityFrom' >
                                            <input type='text' class="txttimerClass" id="txtEffectiveFrom"  disabled/>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                        <label for="txtEffectiveTo">Expiry Till&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <div class='input-group date AppFormdatetimepicker' id='txtValidityTo'>
                                            <input type='text' class="txttimerClass" id="txtEffectiveTo"  disabled/>
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
                                            <input id="txtBrand" disabled class="form-control " type="text" />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtType">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtType" disabled class="form-control" type="text" />

                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtName">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtName" disabled class="form-control" type="text" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtNumber">Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtNumber" disabled class="form-control integer" type="text" />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtColor">Color&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtColor" disabled class="form-control " type="text" />
                                        </div>
                                        <div class="form-group col-lg-4 col-sm-4 col-xs-4 col-md-4">
                                            <label for="txtSize">Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input id="txtSize" disabled class="form-control " type="text" />
                                        </div>
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                    </div>
                </div>



            </div>

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
            GetItemDetails(0, "");
            $("#ItemForm").hide();
            GetCategoryDetails(0, "");

        });
        function AskApproval(evnt, ItemId) {
            event.preventDefault();
            var conf = confirm("Are you sure you want to Approve the Item ?")
            if (!conf) {
                return false;
            }
            var chkVal = $('#chkApprove').prop("checked");
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "ItemApproval.aspx/InsertApprovalData",
                type: "POST",
                data: "{'chkVal':'" + chkVal + "', 'ItemId': '" + ItemId + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    if (len > 0) {
                        alert('Data Approved Successfully');
                        GetItemDetails(0, "");
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

        function GetItemDetails(ItemID, ItemName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "ItemApproval.aspx/GetItemDetails",
                type: "POST",
                data: "{ItemID:" + ItemID + ",ItemName:'" + ItemName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $('#tblApprove').empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Item Name</th>';
                    element = element + '<th>Category</th>';
                    element = element + '<th>Gst Applicable</th>';
                    element = element + '<th>HSN</th>';
                    element = element + '<th>Issuing Qty</th>';
                    element = element + '<th>Purchase Qty</th>';
                    element = element + '<th>Approve</th>';
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
                        //element = element + '<td><a href="#"><span class="label label-warning" onclick="GetItemDetailsForUpdate(' + getResult[i].ItemId + ',\'' + getResult[i].ItemName + '\',' + getResult[i].CategoryId + ',\'' + getResult[i].CategoryName + '\',' + getResult[i].LastPrice + ',' + getResult[i].GstApplicable + ',' + getResult[i].GstRate + ',' + getResult[i].RadStock + ',' + getResult[i].RadService + ',\'' + getResult[i].IQ + '\',\'' + getResult[i].PQ + '\',\'' + getResult[i].HsnCode + '\',\'' + getResult[i].EffectiveStartDate + '\',\'' + getResult[i].EffectiveEndDate + '\',\'' + getResult[i].Brand + '\',\'' + getResult[i].Type + '\',\'' + getResult[i].Name + '\',\'' + getResult[i].Number + '\',\'' + getResult[i].Color + '\',\'' + getResult[i].Size + '\',' + getResult[i].InStockQuantity + ',' + getResult[i].Approved + '); return false;" data-toggle="modal" data-target="#CityModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        if (getResult[i].Approved) {
                            element = element + '<td>' + '<input type="checkbox" disabled checked name="Approve" id="chkApprove" />';
                        }
                        else {
                            element = element + '<td>' + '<input type="checkbox" name="Approve" onclick="AskApproval(event,' + getResult[i].ItemId + ');return false;"  id="chkApprove" />';
                        }
                        element = element + '<td><a href="#"><span class="label label-success" onclick="ViewDetails(' + getResult[i].ItemId + ',);return false;"<i class="fa fa-file-text"  aria-hidden="true"></i> View </span><span class="label label-warning"   onclick="HideDetails(' + getResult[i].ItemId + '); return false;" style="margin-left: 23px;"><i class="fa fa-file-text"  aria-hidden="true"></i>Hide</span></a></td>';



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

      
        function ViewDetails(ItemId) {
            $('#ItemForm').show();
            var ItemName = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "ItemApproval.aspx/GetItemDetails",
                type: "POST",
                data: "{ItemID:" + ItemId + ",ItemName:'" + ItemName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    if (len > 0) {

                        $('#txtItemName').val(getResult[0].ItemName);
                        $('#ddlCategoryId').val(getResult[0].CategoryId);
                        $('#txtLastPrice').val(getResult[0].LastPrice);
                        $('#ddlGstApplicable').val(getResult[0].GstApplicable);
                        $('#ddlGstRate').val(getResult[0].GstRate);
                        $('#radStock').prop('checked', getResult[0].RadStock);
                        $('#radService').prop('checked', getResult[0].RadService);
                        $('#txtEffectiveFrom').val(GetProperDate(getResult[0].EffectiveStartDate));
                        $('#txtEffectiveTo').val(GetProperDate(getResult[0].EffectiveEndDate));
                        $('#txtIQ').val(getResult[0].IQ);
                        $('#txtPQ').val(getResult[0].PQ);
                        $('#txtHsnCode').val(getResult[0].HsnCode);
                        $('#txtBrand').val(getResult[0].Brand);
                        $('#txtType').val(getResult[0].Type);
                        $('#txtName').val(getResult[0].Name);
                        $('#txtNumber').val(getResult[0].Number);
                        $('#txtColor').val(getResult[0].Color);
                        $('#txtSize').val(getResult[0].Size);
                        $('#txtInStockQuantity').val(getResult[0].InStockQuantity);

                    }
                },
                error: function (err) {
                    alert('No Data Available');
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
                async:false,
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#ddlCategoryId").empty();
                    $("#ddlCategoryId").append('<option value="0">------------Select------------</option>');
                    for (var i = 0; i < len; i++) {
                        $("#ddlCategoryId").append('<option value=' + getResult[i].CategoryID + '>' + getResult[i].CategoryName + '</option>');
                    }
                },
                error: function (err) {
                    //alert(err.statusText)
                }
            });
        }

        function HideDetails() {
            $('#ApplicationForm').hide();
        }

        function HideDetails(ItemId) {
            $("#ItemForm").hide();
        }
    </script>
</asp:Content>
