<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Approval.aspx.cs" Inherits="Connect.QU.UII.Admin.Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Approval</title>


    <style>
        .paginate_button {
            margin-left: 1%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">
    <div class="content-wrapper">
        <section class="content">
            <div class="container" style="margin-top: 5%; margin-bottom: 1%; width: 100%;">

                <table id="tblApprove" class="table table-striped cf table-bordered table-striped table-responsive dataTable" style="table-layout: fixed"></table>

            </div>
        </section>
    </div>
    <link href="../css/DataTable/dataTablesbootstrap.css" rel="stylesheet" />
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {

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
