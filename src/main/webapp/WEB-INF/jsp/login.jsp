<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
<HEAD>
	<TITLE>学员论坛--登录</TITLE>

	<META http-equiv=Content-Type content="text/html; charset=gbk">
	<Link rel="stylesheet" type="text/css" href="style/style.css"/>
	<script language="javascript">
		function check() {
			if(document.loginForm.uname.value==""){
				alert("用户名不能为空");
				return false;
			}
			if(document.loginForm.upass.value==""){
				alert("密码不能为空");
				return false;
			}
		}
	</script>
</HEAD>

<BODY>
<DIV>
	<IMG src="../image/logo.gif">
</DIV>
<!--      用户信息、登录、注册        -->

<DIV class="h">
	您尚未　<a href="index.jsp">登录</a>
	&nbsp;| &nbsp; <A href="/reg">注册</A> |
</DIV>


<BR/>
<!--      导航        -->
<DIV>
	&gt;&gt;<B><a href="/index">论坛首页</a></B>
</DIV>
<!--      用户登录表单        -->
<DIV class="t" style="MARGIN-TOP: 15px" align="center">
	<FORM name="loginForm" onSubmit="return check()" action="/index" method="post">
		<br/>用户名 &nbsp;<INPUT class="input" tabIndex="1"  type="text"      maxLength="20" size="35" id="uname">
		<span id="userInfo"></span>
		<br/>密　码 &nbsp;<INPUT class="input" tabIndex="2"  type="password"  maxLength="20" size="40" id="upass">
		<span id="passinfo"></span>
		<br/><INPUT class="btn"  tabIndex="6"  type="submit" value="登 录">
	</FORM>
</DIV>
<!--      声明        -->
<BR/>
<CENTER class="gray">Oriental Boyi Education
	Information Technology Co.,Ltd 版权所有</CENTER>
<script>
	$(function  () {
		layui.use('form', function(){
			var form = layui.form;
			// layer.msg('玩命卖萌中', function(){
			//   //关闭后的操作
			//   });
			//监听提交
			form.on('submit(login)', function(data){

				/*  layer.msg(JSON.stringify(data.field),function(){
                     location.href='index.html'
                 }); */


				$.ajax({
					type:"POST",
					url:"${pageContext.request.contextPath}/checkuser",
					data:data.field,
					success:function(result){
						console.log(result+"====");//打印日志
						if(result=="ok"){
							layer.msg("登录成功",function(){
								location.href='index.jsp'
							});
						}else if(result=="error"){
							layer.msg("账号或者密码错误");
						}
					},
					error:function(){
						layer.msg("请求失败");
					}
				})


				return false;
			});
		});
	})
</script>
</BODY>
</HTML>
