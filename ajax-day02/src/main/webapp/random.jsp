<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
    $(function(){
    	$('#a1').click(f1);
    });
    function f1() {
		$('#d1').load('getNumber.do');
	}
    function f2(){
    	$.ajax({
    		"url":"getNumber.do",
    		"type":"get",
    		"dataType":"text",
    		"success":function(sh){
    			$('#d1').html(sh);
    		}
    	});
    }
</script>
</head>
<body style="font-size: 30px;">
  <a id="a1" href="javascpript:;">点这显示一个随机数</a>
  <div id="d1"></div>
</body>
</html>