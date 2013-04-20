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
				required: "不能为空！",
				minlength: "不能少于4个字符",
				maxlength: "不能大于30个字符"
			},
			'password2': {
				required: "不能为空！",
				minlength: "不能少于4个字符",
				maxlength: "不能大于30个字符",
				equal:""
			}
			
		}
	});
	
});

function equal(value) {
	var password = $("#password").val();
	if(value != password) {
		$("#passwordInfo").html("<font color='red'>两次密码不一样！</font>");
		return false;
	}else {
		$("#passwordInfo").html("");
		return true;
	}
}