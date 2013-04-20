$().ready(function() {
	jQuery.validator.addMethod("equal", function(value, element) {   
		return this.optional(element) || equal(value);   
	}),
	$("#updatePwd").validate({
		rules: {
			'password': {
				required: true,
				minlength: 4,
				maxlength:30
			},
			'password2': {
				required: true,
				minlength: 4,
				maxlength:30,
				equal:true
			}
		},
		messages: {
			'password': {
				required: "����Ϊ�գ�",
				minlength: "��������4���ַ�",
				maxlength: "���ܴ���30���ַ�"
			},
			'password2': {
				required: "����Ϊ�գ�",
				minlength: "��������4���ַ�",
				maxlength: "���ܴ���30���ַ�",
				equal:""
			}
			
		}
	});
	
});

function equal(value) {
	var password = $("#password").val();
	if(value != password) {
		$("#passwordInfo").html("<font color='red'>�������벻һ����</font>");
		return false;
	}else {
		$("#passwordInfo").html("");
		return true;
	}
}