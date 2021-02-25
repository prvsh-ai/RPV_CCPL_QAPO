<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Currency.aspx.cs" Inherits="Connect.QU.UII.Admin.Currency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Currency Master</title>
    <style type="text/css">
         .btn{
                margin-left: 33px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="EAWarpper" runat="server">

      <div class="content-wrapper">
        <!-- Content Header (Page header) -->     

        <!-- Main content -->
        <section class="content">
            <!-- START CUSTOM TABS -->
          
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-solid">

                        <div class="box-body" >
                            
                            <div class="row"> 
                                <div class="col-md-12"> 


                               <div class="form-inline">
                              <div class="form-group">
                                                           
                                 Enter Currency Name   <input id="txtCurrencyName" class="form-control" type="text" />
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

            <!-- /.row -->
              
              <div id="CurrencyModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
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
                               
                                Enter Currency Name <input id="txtCurrencyNameUpdate" class="form-control" type="text" />

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
        <!-- /.content -->
      
        <div id="pageloaddiv" class="pageloaddiv" style="display: none;">
         
        </div>

          <input id="hidCurrencyId" type="hidden" />

    </div>

      <script type="text/javascript">

          $(document).ready(function () {
              GetCurrencyDetails(0, "");

              $("#btnSave").click(function () {
                  if ($('#txtCurrencyName').val().trim() != '') {

                      data.Mode = 1;
                      data.CurrencyId = 0;
                      data.CurrencyName = $('#txtCurrencyName').val();

                      InsertUpdateCurrencyDetails(data);
                      //InsertUpdateCurrencyDetails(1, 0, $('#txtCurrencyName').val());
                      //        alert('Successfull called Insert Method');
                  }
              });

              $("#btnUpdate").click(function () {

                  if ($('#txtCurrencyNameUpdate').val().trim() != '') {

                      data.Mode = 2;
                      data.CurrencyId = $('#hidCurrencyId').val();
                      data.CurrencyName = $('#txtCurrencyNameUpdate').val();

                      InsertUpdateCurrencyDetails(data);
                      // InsertUpdateCurrencyDetails(2, $('#hidCurrencyId').val(), $('#txtCurrencyNameUpdate').val());
                  }
              });

          });

          //just for testing purpose ,i have marked this commented
         // function InsertUpdateCurrencyDetails(Mode, CurrencyId, CurrencyName) {
          function InsertUpdateCurrencyDetails(data) {

              $.ajax({
                  contentType: "application/json; charset=utf-8",
                  url: "Currency.aspx/SaveUpdateCurrencyDetails",
                  type: "POST",
                 // data: "{Mode:" + Mode + ",CurrencyId:" + CurrencyId + ",CurrencyName:'" + CurrencyName + "'}",
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



          //function InsertUpdateCurrencyDetails(Mode, CurrencyId, CurrencyName) {
          //   // alert(window.FormData);
          //    if (window.FormData != undefined) {
          //        alert('enter the dragon');
          //        var formData = new FormData();
          //        formData.append('Mode', Mode);
          //        formData.append('CurrencyId', CurrencyId);
          //        formData.append('CurrencyName', CurrencyName);
          //       // var x = JSON.stringify({ 'formData': formData1 });
          //        //alert(x);

          //        //var x = JSON.parse(formData);
          //        //alert(x);

          //        $.ajax({
          //            contentType: false,//"multipart/form-data", //"application/json; charset=utf-8",
          //            url: "Currency.aspx/SaveUpdateCurrencyDetails",
          //            type: "POST",
          //            processData: false,
          //            traditional:true,
          //            async: true,
          //            cache: false,

          //            data:JSON.stringify(formData),

          //            //data: "{Mode:" + Mode + ",CurrencyId:" + CurrencyId + ",CurrencyName:'" + CurrencyName + "'}",
          //            //dataType: "json",
          //            success: function (result) {

          //                alert('result value');
          //                alert(result){};
          //                var getResult = result.d;
          //                if (getResult != "0") {


          //                    alert(getResult);
          //                    alert('Hello');
          //                    GetCurrencyDetails(0, "");
          //                }
          //                else {
          //                    alert("There is an Error");
          //                }
          //            },
          //            error: function (err) {
          //                alert('Errorr');
          //            }
          //        });
          //    }
          //    else {
          //        alert('formdata is not supported');
          //    }

          //}


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
                          element = element + '<tr><td colspan="3"><p class="text-center">No Currency Data Available</p></td></tr>'
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


    </script>

</asp:Content>
