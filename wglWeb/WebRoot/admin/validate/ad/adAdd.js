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
				required:" ����Ϊ�գ�"
			},
			'category': {
				required: "��ѡ��"
			},
			'unit': {
				required: "��ѡ��"
			}
			
			
		}
	});
	
});
