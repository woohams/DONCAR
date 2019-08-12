<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>

<script type="text/javascript">

$(function(){
	cdcheck();
	$("#addr_list").click(function(){
			addralert()
	});
		
	$("#cd_list").on("change",function(){
			addrcheck()
	});
		
	$("#addr_list").on("change",function(){
			var str = '';
			$("#cd_list option").each(function(){
				if($(this).prop('selected')==true){
					str += $(this).text();
					return;
				}
			});
			
			$("#addr_list option").each(function(){
				if($(this).prop('selected')==true){
					str += $(this).text();
					return;
				}
			})
		$("#location").val(str);
	})
});

	function addralert(){
		var sd = $("#cd_list").val();
		if(sd == null || sd == ""){
			alert("시를 먼저 선택해주세요")
		 $("cd_list").val();
		}
	}

	function cdcheck() {
		alert('들어옴');
		var acc = "44b190c3-b2f2-4449-9b64-1df9436b203c"+'&';
		$.ajax({
			url : "https://sgisapi.kostat.go.kr/OpenAPI3/addr/stage.json?accessToken="+acc,
			dataType : "json",
			success : function(data) {
				var arr = data.result;
				var select = $('#cd_list');
				
				for(var i = 0; i<arr.length; i++){ 
					select.append($('<option value="'+arr[i].cd+'">'+arr[i].addr_name+'</option>'));
				}
			},
			error : function() {
			alert("실패");
			}
		});
	}

	function addrcheck(){
		var cdvalue = $('#cd_list').val();
		var cd = ''
			cd = 'cd=' + cdvalue;
		var acc = "44b190c3-b2f2-4449-9b64-1df9436b203c"+"&";
		$.ajax({
			url : "https://sgisapi.kostat.go.kr/OpenAPI3/addr/stage.json?accessToken="+acc+cd,
			dataType : "json",
			success : function(data){
				var arr = data.result;
				var select = $('#addr_list');
				select.html('');
				for(var i=0; i<arr.length; i++){
					select.append($('<option value="'+arr[i].cd+'">'+arr[i].addr_name+'</option>'));
				}
			},
			error : function() {
			alert("실패");
			}
		});
	}

</script>