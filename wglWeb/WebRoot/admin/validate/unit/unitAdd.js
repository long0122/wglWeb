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
				required:" ����Ϊ�գ�"
			},
			'category': {
				required: "��ѡ��"
			}
			
			
		}
	});
	
});
