/*
 * need add jquery.form.js
 */


function resetInput() {
	$("#name").val("");
	$("#name").focus();
	$("#content").val("");
}
function sendMessage(){
	var content=$("#content").val();
	if(content==null||""==content){
		$("#contentDiv").addClass("error");
		$("#errMsg").show();
		return;
	}else{
		$("#contentDiv").removeClass("error");
		$("#errMsg").hide();
	}
	var basePath=$("#basePath").val();
	var name=$("#name").val();
	var url = basePath+"ajax!doMessage";
	var params = {messageName:name,messageContent:content};
	$.ajax({
		type : "POST",
		url : url,
		dataType : 'json',
		data:params,
		beforeSend : function() {
			// Handle the beforeSend event
			$("#sendMsgButton").button('loading');
			$(".alert").alert();
		},
		success : function(data) {
			$("#sendMsgButton").button('reset');
			var jsonObject = eval("(" + data + ")");
			if(jsonObject!=null&&"ok"==jsonObject.str){
				$('#msgModal').modal('show');
				resetInput();
			}	
		},
		error : function(msg) {
			alert('error');
		}

	});	
}

function delMessage(id){
	if(confirm("确定删除吗？")){
		var basePath=$("#basePath").val();
		window.location.href=basePath+"main/message!del?id="+id;
	}
	
}