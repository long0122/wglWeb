$().ready(function() {

	$("#adForm").validate({
		rules: {
			'title':{
				required: true
			},
			'category': {
				required: true
			},
			'unit': {
				required: true
			}
			
		},
		messages: {
			'title': {
				required:" 不能为空！"
			},
			'category': {
				required: "请选择！"
			},
			'unit': {
				required: "请选择！"
			}
			
			
		}
	});
	
});
