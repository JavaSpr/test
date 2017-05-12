<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>badu</title>
<style type="text/css">
  #d1{
    width:480px;
    height:350px;
    background-color: black;
    margin-left: 350px;
  }
  #d2{
    color: yellow;
    background-color: red;
    height:32px;
  }
  table{
    color:white;
    font-style:italic;
    font-size:24px;    
  }
</style>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
  $(function(){
	  //页面加载完成后，每隔一段时间执行quto
	setInterval(quto,5000);
});
  function quto() {
	//利用jQuery提供的方法（$.ajax）来向服务器发送异步请求
	$.ajax({
		"url":"quto.do",
		"type":"post",
		//"data":"uname=sally&age=22"
		"dataType":"json",//返回给浏览器文本类型
		"success":function(sb){
			//处理服务器返回的数据
		   /*
		     sb是服务器返回的数据。
		   如果服务器返回的是json字符串会自动转换成javaSpcript对象。
		     */
		     //更新表格
		     $('#tb1').empty();
		   for(i=0;i<sb.length;i++){
			   var s=sb[i];
			   $('#tb1').append('<tr><td>'+s.code+'</td><td>'+s.name+'</td><td>'+s.price+'</td></tr>');
			   
		   }
		   
		},
		"error":function(){
			//服务器出错，在这处理
			
		}
	});
}
</script>
</head>
<body style="font-size: 30px;">

    <div id="d1">
    <form action="">
        <div id="d2">实时行情</div>
        <div id="d3">
           <table width="100%">
             <thead>
                <tr>
                  <td>代码</td>
                  <td>名称</td>
                  <td>价格</td>
                </tr>
             </thead>
              <tbody id="tb1">
              </tbody>
           </table>
        </div>
        </form>
    </div>
    
</body>
</html>