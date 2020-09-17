/*发送消息*/
function send(headSrc,str){
	var html="<div class='send'><div class='msg'><img src="+headSrc+" />"+
	"<p class='socket_message_p'><i class='msg_input'></i>"+str+"</p></div></div>";
	upView(html);
}
/*接受消息*/
function show(headSrc,str){
	var html="<div class='show'><div class='msg'><img src="+headSrc+" />"+
	"<p  class='socket_message_p'><i class='msg_input'></i>"+str+"</p></div></div>";
	upView(html);
}
/*更新视图*/
function upView(html){
	$('.message').append(html);
	var _div=document.getElementById("message");
	_div.scrollTop = _div.scrollHeight;
}
function sj(){
	return parseInt(Math.random()*10)
}
$(function(){
	
	$('.footer p').click(function(){
		show("http://192.168.8.9/zhangsanfeng/2020-03-29/c2cc34e6602d45aeb62167d85e6be0b5_test2.jpg",$("#socket_console").val());
		$("#socket_console").val("");
		test();
	})
	//监听回车事件
	$('#socket_console').bind('keypress', function (event) {
		if(event.keyCode == "13"){
			show("http://192.168.8.9/zhangsanfeng/2020-03-29/c2cc34e6602d45aeb62167d85e6be0b5_test2.jpg",$("#socket_console").val());
			$("#socket_console").val("");
			test();
		}
		
	});
})

 

/*测试数据*/
var arr=['跟我聊会天吧'];
var imgarr=['http://192.168.8.9/zhangsanfeng/2020-03-29/c2cc34e6602d45aeb62167d85e6be0b5_test2.jpg','http://192.168.8.9/zhangsanfeng/2020-03-29/c2cc34e6602d45aeb62167d85e6be0b5_test2.jpg']
test()
function test(){
	$(arr).each(function(i){
		setTimeout(function(){
			send("http://192.168.8.9/zhangsanfeng/2020-03-29/c2cc34e6602d45aeb62167d85e6be0b5_test2.jpg",arr[i])
		},sj()*500)
	})
}
