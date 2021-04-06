<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Page/Page.Master" CodeBehind="Currency.aspx.cs" Inherits="Connect.QU.UII.Page.Currency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Currency Master</title>
    <style type="text/css">
        .btn {
            margin-left: 33px;
        }
    </style>
    <link href="../css/Admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-solid">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            Enter Currency Name  
                                            <input id="txtCurrencyName" class="form-control" type="text" />
                                        </div>
                                        <input id="btnSave" type="button" value="Save" class="btn btn-success" />
                                    </div>
                                </div>
                            </div>
                            <table id="CurrencyTableId" class="table table-striped cf">
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div id="CurrencyModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="panel-body no-padding flip-scroll">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                Enter Currency Name
                                                <input id="txtCurrencyNameUpdate" class="form-control" type="text" />
                                            </div>
                                            <input id="btnUpdate" type="button" value="Update" class="btn btn-success" />
                                        </div>
                                    </div>
                                </div>
                                <p class="panel-close">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
        </div>
        <input id="hidCurrencyId" type="hidden" />
    </div>
    <div id="overlay">
        <div class="cv-spinner">
            <span class="spinner"></span>
        </div>
    </div>
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
            GetCurrencyDetails(0, "");
            $("#btnSave").click(function () {
                if ($('#txtCurrencyName').val().trim() != '') {
                    data.Mode = 1;
                    data.CurrencyId = 0;
                    data.CurrencyName = $('#txtCurrencyName').val();
                    InsertUpdateCurrencyDetails(data);
                }
            });
            $("#btnUpdate").click(function () {
                if ($('#txtCurrencyNameUpdate').val().trim() != '') {
                    data.Mode = 2;
                    data.CurrencyId = $('#hidCurrencyId').val();
                    data.CurrencyName = $('#txtCurrencyNameUpdate').val();
                    InsertUpdateCurrencyDetails(data);
                }
            });
        });
        function GetCurrencyDetails(CurrencyId, CurrencyName) {
            var element = "";
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Currency.aspx/GetCurrencyDetails",
                type: "POST",
                data: "{CurrencyId:" + CurrencyId + ",CurrencyName:'" + CurrencyName + "'}",
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    var len = getResult.length;
                    $("#CurrencyTableId").empty();
                    element = element + '<thead class="cf"><tr class="bgblue-Over">';
                    element = element + '<th>Currency Name</th>';
                    element = element + '<th>Action</th>';
                    element = element + '</tr></thead><tbody>';
                    if (len == 0) {
                        element = element + '<tr>';
                        element = element + '<td>No Data Available</td>';
                        element = element + '<td></td>';
                        element = element + '</tr>';
                    }
                    for (var i = 0; i < len; i++) {
                        element = element + '<tr>';
                        element = element + '<td>' + getResult[i].CurrencyName + '</td>';
                        element = element + '<td><a href="#"><span class="label label-warning" onclick="GetCurrencyDetailsForUpdate(' + getResult[i].CurrencyId + ',\'' + getResult[i].CurrencyName + '\'); return false;" data-toggle="modal" data-target="#CurrencyModal"><i class="fa fa-file-text"  aria-hidden="true"></i> Edit </span></a></td>';
                        element = element + '</tr>';
                    }
                    element = element + '</tbody>';
                    $("#CurrencyTableId").append(element);
                },
                error: function (err) {
                    // alert(err.statusText)
                }
            });
        }
        function GetCurrencyDetailsForUpdate(CurrencyId, CurrencyName) {
            $('#hidCurrencyId').val(CurrencyId);
            $('#txtCurrencyNameUpdate').val(CurrencyName);

        }
        function InsertUpdateCurrencyDetails(data) {
            $.ajax({
                contentType: "application/json; charset=utf-8",
                url: "Currency.aspx/SaveUpdateCurrencyDetails",
                type: "POST",
                data: JSON.stringify({ 'cnt': data }),
                dataType: "json",
                success: function (result) {
                    var getResult = result.d;
                    if (getResult != "0") {
                        alert(getResult);
                        GetCurrencyDetails(0, "");
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
