function checkNameEmpty(inputID) {
    $(inputID).blur(function () {

        if ($(this).val() == '') {
            $(this).css('border', '1px solid red');

        }
        else {
            $(this).css('border', '1px solid green');

        }
    });
}

//regex to validate email
function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

// validation for email input using validateEmail Function
function checkValidEmail(emailInputID) {
    $(emailInputID).blur(function () {
        var email = $(emailInputID).val();
        if (validateEmail(email)) {
            $(this).css('border', '1px solid green');

        }
        else {
            $(this).css('border', '1px solid red');
        }
    });


}

// regex to validate phone
function validatePhone(inputtxt) {

    //+XX-XXXX-XXXX
    //+XX.XXXX.XXXX
    //+XX XXXX XXXX

    //var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
    var phoneno = /^\d{10}$/;
    if (inputtxt.match(phoneno)) {
        return true;
    }
    else {
        return false;
    }
}

// validation for phone input using validatePhone Function
function checkvalidPhoneNumber(phoneInputID) {

    $(phoneInputID).blur(function () {
        var phone = $(phoneInputID).val();
        var getPhone = validatePhone(phone);
        if (getPhone) {
            $(this).css('border', '1px solid green');
        }
        else {
            $(this).css('border', '1px solid red');
        }

    });
}

function checkComment(commentID) {
    $(commentID).blur(function () {

        if ($(this).val() == '') {
            $(this).css('border', '1px solid red');

        }
        else {
            $(this).css('border', '1px solid green');

        }
    });
}

//User
function Validation_Register(userid, password, name, mobileno, designation, emailid, address, roleid) {

    if ($(userid).val() == '') {
        $(userid).css('border', '1px solid red');
        alert("Please Enter User Name");
        $(userid).focus();
        return false;
    }
    if ($(password).val() == '') {
        $(password).css('border', '1px solid red');
        alert("Please Enter Password");
        $(password).focus();
        return false;
    }
    if ($(name).val() == '') {
        $(name).css('border', '1px solid red');
        alert("Please Enter Name");
        $(name).focus();
        return false;
    }
    if ($(mobileno).val() != '') {
        var getPhone = validatePhone($(mobileno).val());
        if (!getPhone) {
            alert("Please Enter Valid Contact Number");
            $(mobileno).focus();
            return false;
        }
    }
    if ($(designation).val() == '') {
        $(designation).css('border', '1px solid red');
        alert("Please Enter Designation");
        $(designation).focus();
        return false;
    }
    if ($(emailid).val() == '') {
        $(emailid).css('border', '1px solid red');
        alert("Please Enter Email Id");
        $(emailid).focus();
        return false;
    }
    if ($(emailid).val() != '') {
        var email = $(emailid).val();
        if (!validateEmail(email)) {
            alert("Please Enter Valid Email Id");
            $(email).focus();
            return false;
        }
    }
    if ($(address).val() == '') {
        $(address).css('border', '1px solid red');
        alert("Please Enter Address");
        $(address).focus();
        return false;
    }
    var options = $("option:selected", roleid);
    var x = (options[0].value != 0 && options.length > 0 && options[0].value != '')
    if (x) {
        $(roleid).css('border', '1px solid green');
    }
    else {
        $(roleid).css('border', '1px solid red');
        alert("Please Select User Role");
        $(roleid).focus();
        return false;
    }
    return true;
}

//Company
function Validation_Company(companyname, emailid, address, country, state, city, companylocation, contactno, zipcode, poc, pocno) {

    if ($(companyname).val() == '') {
        $(companyname).css('border', '1px solid red');
        alert("Please Enter Company Name");
        $(companyname).focus();
        return false;
    }
    if ($(emailid).val() != '') {
        var email = $(emailid).val();
        if (!validateEmail(email)) {
            alert("Please Enter Valid Email Id");
            $(emailid).focus();
            return false;
        }
    }
    if ($(address).val() == '') {
        $(address).css('border', '1px solid red');
        alert("Please Enter Address");
        $(address).focus();
        return false;
    }
    var optionscountry = $("option:selected", country);
    var xcountry = (optionscountry[0].value != 0 && optionscountry.length > 0 && optionscountry[0].value != '')
    if (xcountry) {
        $(country).css('border', '1px solid green');
    }
    else {
        $(country).css('border', '1px solid red');
        alert("Please Select Country");
        $(country).focus();
        return false;
    }
    var optionsstate = $("option:selected", state);
    var xstate = (optionsstate[0].value != 0 && optionsstate.length > 0 && optionsstate[0].value != '')
    if (xstate) {
        $(state).css('border', '1px solid green');
    }
    else {
        $(state).css('border', '1px solid red');
        alert("Please Select State");
        $(state).focus();
        return false;
    }
    var optionscity = $("option:selected", city);
    var xcity = (optionscity[0].value != 0 && optionscity.length > 0 && optionscity[0].value != '')
    if (xcity) {
        $(city).css('border', '1px solid green');
    }
    else {
        $(city).css('border', '1px solid red');
        alert("Please Select City");
        $(city).focus();
        return false;
    }
    var xcompanylocation = $(companylocation + " option:selected").length;
    if (xcompanylocation > 0) {
        $(companylocation).css('border', '1px solid green');
    }
    else {
        $(companylocation).css('border', '1px solid red');
        alert("Please Select Company Location");
        $(companylocation).focus();
        return false;
    }

    if ($(contactno).val() != '') {
        var getPhone = validatePhone($(contactno).val());
        if (!getPhone) {
            alert("Please Enter Valid Contact Number");
            $(contactno).focus();
            return false;
        }
    }
    if ($(zipcode).val() == '') {
        $(zipcode).css('border', '1px solid red');
        alert("Please Enter Zip Code");
        $(zipcode).focus();
        return false;
    }
    if ($(poc).val() == '') {
        $(poc).css('border', '1px solid red');
        alert("Please Enter Point Of Contact person name");
        $(poc).focus();
        return false;
    }
    if ($(pocno).val() != '') {
        var getPhone = validatePhone($(pocno).val());
        if (!getPhone) {
            alert("Please Enter Valid POC Contact Number");
            $(pocno).focus();
            return false;
        }
    }
    if (!($("input[name=chkCustomer]").prop("checked") || $("input[name=chkVendor]").prop("checked") || $("input[name=chkCustomerUpdate]").prop("checked") || $("input[name=chkVendorUpdate]").prop("checked"))) {
        alert("Please Select Customer or Vendor");
        return false;
    }
    return true;
}

//Item
function Validation_Item(name, category, lastprice, gstavailable, gstrate, effectivefrom, effectiveto) {

    if ($(name).val() == '') {
        $(name).css('border', '1px solid red');
        alert("Please Enter Item Name");
        $(name).focus();
        return false;
    }
    var optionscategory = $("option:selected", category);
    var xcategory = (optionscategory[0].value != 0 && optionscategory.length > 0 && optionscategory[0].value != '')
    if (xcategory) {
        $(category).css('border', '1px solid green');
    }
    else {
        $(category).css('border', '1px solid red');
        alert("Please Select Country");
        $(category).focus();
        return false;
    }
    if ($(lastprice).val() == '') {
        $(lastprice).css('border', '1px solid red');
        alert("Please Enter List Price");
        $(lastprice).focus();
        return false;
    }

    var optionsgstavailable = $("option:selected", gstavailable);
    var xgstavailable = (optionsgstavailable[0].value != 0 && optionsgstavailable.length > 0 && optionsgstavailable[0].value != '')
    if (xgstavailable) {
        $(gstavailable).css('border', '1px solid green');
    }
    else {
        $(gstavailable).css('border', '1px solid red');
        alert("Please Select State");
        $(gstavailable).focus();
        return false;
    }
    var optionsgstrate = $("option:selected", gstrate);
    var xgstrate = (optionsgstrate[0].value != 0 && optionsgstrate.length > 0 && optionsgstrate[0].value != '')
    if (xgstrate) {
        $(gstrate).css('border', '1px solid green');
    }
    else {
        $(gstrate).css('border', '1px solid red');
        alert("Please Select State");
        $(gstrate).focus();
        return false;
    }
    if ($(effectivefrom).val() == '') {
        $(effectivefrom).css('border', '1px solid red');
        alert("Please Enter Item Name");
        $(effectivefrom).focus();
        return false;
    }
    if ($(effectiveto).val() == '') {
        $(effectiveto).css('border', '1px solid red');
        alert("Please Enter Item Name");
        $(effectiveto).focus();
        return false;
    }
    return true;
}

//Category
function Validation_Category(name, code) {

    if ($(name).val() == '') {
        $(name).css('border', '1px solid red');
        alert("Please Enter Item Name");
        $(name).focus();
        return false;
    }
    if ($(code).val() == '') {
        $(code).css('border', '1px solid red');
        alert("Please Enter Item Name");
        $(code).focus();
        return false;
    }
    if (!(
        $("input[name=Brand]").prop("checked") || $("input[name=Type]").prop("checked") || $("input[name=Name]").prop("checked") || $("input[name=Number]").prop("checked") || $("input[name=Color]").prop("checked") || $("input[name=Size]").prop("checked") ||
        $("input[name=Brand2]").prop("checked") || $("input[name=Type2]").prop("checked") || $("input[name=Name2]").prop("checked") || $("input[name=Number2]").prop("checked") || $("input[name=Color2]").prop("checked") || $("input[name=Size2]").prop("checked")

        )) {
        alert("Please Select Atleast One Specification");
        return false;
    }
    return true;
}

//Requisition
function Validation_Requisition(quotationid, requisitiondate, requiredby, approvedby, requisitionnumber, preparedby) {
    var optionsquotationid = $("option:selected", quotationid);
    var xquotationid = (optionsquotationid[0].value != 0 && optionsquotationid.length > 0 && optionsquotationid[0].value != '')
    if (xquotationid) {
        $(quotationid).css('border', '1px solid green');
    }
    else {
        $(quotationid).css('border', '1px solid red');
        alert("Please Select Quotation");
        $(quotationid).focus();
        return false;
    }
    if ($(requiredby).val() == '') {
        $(requiredby).css('border', '1px solid red');
        alert("Please Enter Required By Name");
        $(requiredby).focus();
        return false;
    }
    if ($(requisitiondate).val() == '') {
        $(requisitiondate).css('border', '1px solid red');
        alert("Please Select Requisition Date");
        $(requisitiondate).focus();
        return false;
    }
    if ($(approvedby).val() == '') {
        $(approvedby).css('border', '1px solid red');
        alert("Please Enter Approved By Name");
        $(approvedby).focus();
        return false;
    }
    if ($(requisitionnumber).val() == '') {
        $(requisitionnumber).css('border', '1px solid red');
        alert("Please Select Requisition Number");
        $(requisitionnumber).focus();
        return false;
    }
    if ($(preparedby).val() == '') {
        $(preparedby).css('border', '1px solid red');
        alert("Please Enter Prepared By Name");
        $(preparedby).focus();
        return false;
    }
    return true;
}

//TOC Requisition
function Validation_TOCRequisition(itemname, requiredqty, instockqty, purchaseqty, rate, amount, poitemno) {
    var optionsitemname = $("option:selected", itemname);
    var xitemname = (optionsitemname[0].value != 0 && optionsitemname.length > 0 && optionsitemname[0].value != '')
    if (xitemname) {
        $(itemname).css('border', '1px solid green');
    }
    else {
        $(itemname).css('border', '1px solid red');
        alert("Please Select Item Name");
        $(itemname).focus();
        return false;
    }
    if ($(requiredqty).val() == '') {
        $(requiredqty).css('border', '1px solid red');
        alert("Please Enter Required Quantity");
        $(requiredqty).focus();
        return false;
    }
    if ($(instockqty).val() == '') {
        $(instockqty).css('border', '1px solid red');
        alert("Please Enter In Stock Quantity");
        $(instockqty).focus();
        return false;
    }
    if ($(purchaseqty).val() == '') {
        $(purchaseqty).css('border', '1px solid red');
        alert("Please Enter Purchase Quantity");
        $(purchaseqty).focus();
        return false;
    }

    if ($(rate).val() == '') {
        $(rate).css('border', '1px solid red');
        alert("Please Enter Rate");
        $(rate).focus();
        return false;
    }
    if ($(amount).val() == '') {
        $(amount).css('border', '1px solid red');
        alert("Please Enter Amount");
        $(amount).focus();
        return false;
    }
    if ($(poitemno).val() == '') {
        $(poitemno).css('border', '1px solid red');
        alert("Please Enter PO Item Number");
        $(poitemno).focus();
        return false;
    }
    return true;
}

//Quotation
function Validation_Quotation(projectname, financialyear, quotationdate, ddlcompanyid, placeofsupply, taxableamount, totalwords, grandtotal, termsandconditions, signaturedate, currencyid, locationid) {

    if ($(projectname).val() == '') {
        $(projectname).css('border', '1px solid red');
        alert("Please Enter Project Name");
        $(projectname).focus();
        return false;
    }
    if ($(financialyear).val() == '') {
        $(financialyear).css('border', '1px solid red');
        alert("Please Enter In Financial Year");
        $(financialyear).focus();
        return false;
    }
    if ($(quotationdate).val() == '') {
        $(quotationdate).css('border', '1px solid red');
        alert("Please Enter Quotation Date");
        $(quotationdate).focus();
        return false;
    }
    var optionddlcompanyid = $("option:selected", ddlcompanyid);
    var xddlcompanyid = (optionddlcompanyid[0].value != 0 && optionddlcompanyid.length > 0 && optionddlcompanyid[0].value != '')
    if (xddlcompanyid) {
        $(ddlcompanyid).css('border', '1px solid green');
    }
    else {
        $(ddlcompanyid).css('border', '1px solid red');
        alert("Please Select Company Name");
        $(ddlcompanyid).focus();
        return false;
    }
    if ($(placeofsupply).val() == '') {
        $(placeofsupply).css('border', '1px solid red');
        alert("Please Enter Place Of Supply");
        $(placeofsupply).focus();
        return false;
    }
    if ($(taxableamount).val() == '') {
        $(taxableamount).css('border', '1px solid red');
        alert("Please Enter Taxable Amount");
        $(taxableamount).focus();
        return false;
    }
    if ($(totalwords).val() == '') {
        $(totalwords).css('border', '1px solid red');
        alert("Please Enter Total Words");
        $(totalwords).focus();
        return false;
    }
    if ($(grandtotal).val() == '') {
        $(grandtotal).css('border', '1px solid red');
        alert("Please Enter Grand Total");
        $(grandtotal).focus();
        return false;
    }
    if ($(termsandconditions).val() == '') {
        $(termsandconditions).css('border', '1px solid red');
        alert("Please Enter Terms And Conditions");
        $(termsandconditions).focus();
        return false;
    }
    if ($(signaturedate).val() == '') {
        $(signaturedate).css('border', '1px solid red');
        alert("Please Enter Signature Date");
        $(signaturedate).focus();
        return false;
    }

    var optioncurrencyId = $("option:selected", currencyid);
    var xcurrencyid = (optioncurrencyId[0].value != 0 && optioncurrencyId.length > 0 && optioncurrencyId[0].value != '')
    if (xcurrencyid) {
        $(currencyid).css('border', '1px solid green');
    }
    else {
        $(currencyid).css('border', '1px solid red');
        alert("Please Select Currenty Type");
        $(currencyid).focus();
        return false;
    }
    var optionlocationid = $("option:selected", locationid);
    var xlocationid = (optionlocationid[0].value != 0 && optionlocationid.length > 0 && optionlocationid[0].value != '')
    if (xlocationid) {
        $(locationid).css('border', '1px solid green');
    }
    else {
        $(locationid).css('border', '1px solid red');
        alert("Please Select Location");
        $(locationid).focus();
        return false;
    }

    return true;
}

//TOC Requisition
function Validation_TOCQuotation(itemname, qty, rate, amount, totalamount) {
    var optionsitemname = $("option:selected", itemname);
    var xitemname = (optionsitemname[0].value != 0 && optionsitemname.length > 0 && optionsitemname[0].value != '')
    if (xitemname) {
        $(itemname).css('border', '1px solid green');
    }
    else {
        $(itemname).css('border', '1px solid red');
        alert("Please Select Item Name");
        $(itemname).focus();
        return false;
    }
    if ($(qty).val() == '') {
        $(qty).css('border', '1px solid red');
        alert("Please Enter Required Quantity");
        $(qty).focus();
        return false;
    }
    if ($(rate).val() == '') {
        $(rate).css('border', '1px solid red');
        alert("Please Enter Rate");
        $(rate).focus();
        return false;
    }
    if ($(amount).val() == '') {
        $(amount).css('border', '1px solid red');
        alert("Please Enter Value");
        $(amount).focus();
        return false;
    }

    if ($(totalamount).val() == '') {
        $(totalamount).css('border', '1px solid red');
        alert("Please Enter Total Amount");
        $(totalamount).focus();
        return false;
    }
    return true;
}

//Category
function Validation_Execution(documentnumber, division, creationdate, versionnumber,suppliername,modificationdate) {

    var optiondocumentnumber = $("option:selected", documentnumber);
    var xdocumentnumber = (optiondocumentnumber[0].value != 0 && optiondocumentnumber.length > 0 && optiondocumentnumber[0].value != '')
    if (xdocumentnumber) {
        $(documentnumber).css('border', '1px solid green');
    }
    else {
        $(documentnumber).css('border', '1px solid red');
        alert("Please Select Document Number");
        $(documentnumber).focus();
        return false;
    }
    if ($(division).val() == '') {
        $(division).css('border', '1px solid red');
        alert("Please Enter Division");
        $(division).focus();
        return false;
    }
    if ($(creationdate).val() == '') {
        $(creationdate).css('border', '1px solid red');
        alert("Please Enter Creation Date");
        $(creationdate).focus();
        return false;
    }
    if ($(versionnumber).val() == '') {
        $(versionnumber).css('border', '1px solid red');
        alert("Please Enter Version Number");
        $(versionnumber).focus();
        return false;
    }
    if ($(suppliername).val() == '') {
        $(suppliername).css('border', '1px solid red');
        alert("Please Enter Supplier Name");
        $(suppliername).focus();
        return false;
    }
    if ($(modificationdate).val() == '') {
        $(modificationdate).css('border', '1px solid red');
        alert("Please Enter Modification Date");
        $(modificationdate).focus();
        return false;
    }
    return true;
}


