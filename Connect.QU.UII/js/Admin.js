$('.integer').keyup(function (e) {
    if (/\D/g.test(this.value)) {
        this.value = this.value.replace(/\D/g, '');
    }
});

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

