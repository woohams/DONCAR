<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="./dist/summernote.css" rel="stylesheet">
<script src="./dist/summernote.js"></script>
<script type="text/javascript">
	/* summernote에서 이미지 업로드시 실행할 함수 */
	function sendFile(file, editor){
		data = new FormData();
		data.append("uploadFile", file);
		$.ajax({
			data : data,
			dataType : "json",
			type : "POST",
			url : "./summernote_imageUpload.jsp",
			enctype : 'multipart/form-data',
			cache : false,
			contentType : false,
			processData : false,
			success : function(data){
				$(editor).summernote('editor.insertImage',data.url);
			}
		});
	}
</script>
</head>
<body>
		<textarea id="summernote"></textarea>
		<script>
			$(document).ready(function(){
				$("#summernote").summernote({
					height: 400,
					callbacks: {
						onImageUpload: function(files, editor, welEditable){
							for( var i=0; i<files.length; i++ ){
								sendFile(files[i], this);
							}
						}
					}
				})
			})
		</script>
</body>
</html>