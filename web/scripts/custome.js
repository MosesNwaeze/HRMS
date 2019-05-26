$(document).ready(function () {

    //ajax request for deleting an employee
    $(".remove").click(function () {
        var id = $(this).val();
        //console.log(id);
        $.ajax({
            url: 'EmployeeControllerServlet',
            data: {
                "employeeid": id
            },
            type: 'GET',
            success: function (data, textStatus, jqXHR) {
                if (data !== null) {
                    //console.log(data);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            contentType: 'application/json;charset=UTF-8'
        });
        setInterval(function () {
            location.reload();
        }, 1000);
    }); //end of deleting ajax request

    //put request
    

});



