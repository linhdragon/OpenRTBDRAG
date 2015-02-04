<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.4/css/jquery.dataTables.css">
<title>Home</title>
<script>
$(document).ready(function(){
    $("#callAjax").click(function(){
    	$.ajax({
            url : "action1",
            dataType : 'json',
            success : function(data) {
            	$('#example').dataTable( {
            		"data" : data,
                    "columns": [
                        { "data": "name" },
                        { "data": "age" },
                    ]
                } );
            	console.log(data);
            	console.log(data.length);
            },
            error : function(e) {
                console.log("Error Occured: "+e);
            }
        });
    });
});
</script>
</head>
<body>
<a href="action1">action1</a>
<br><br><br>
<button id="callAjax">click me to call ajax</button>
<br><br><br>
<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Age</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Age</th>
            </tr>
        </tfoot>
    </table>
</body>
</html>