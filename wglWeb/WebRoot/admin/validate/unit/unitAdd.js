$().ready(function() {

	$("#unitAddForm").validate({
		rules: {
			'name':{
				required: true
			},
			'category': {
				required: true
			}
			
		},
		messages: {
			'name': {
				required:" 不能为空！"
			},
			'category': {
				required: "请选择！"
			}
			
			
		}
	});
	
});
