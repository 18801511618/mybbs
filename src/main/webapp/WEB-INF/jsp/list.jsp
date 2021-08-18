<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<TITLE>学员论坛--帖子列表</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gbk">
<Link rel="stylesheet" type="text/css" href="style/style.css" />
</HEAD>

<BODY>
<DIV>
	<IMG src="../../image/logo.gif">
</DIV>
<!--      用户信息、登录、注册        -->

<DIV class="h">
	您尚未　<a href="/login">登录</a>
	&nbsp;| &nbsp; <A href="/reg">注册</A> |
</DIV>


<!--      主体        -->
<DIV>
<!--      导航        -->
<br/>
<DIV>
	&gt;&gt;<B><a href="/index">论坛首页</a></B>&gt;&gt;
	<B><a href="/list">灌水乐园</a></B>
</DIV>
<br/>
<!--      新帖        -->
	<DIV>
		<A href="${pageContext.request.contextPath}/toAddbbs"><IMG src="../../image/post.gif" name="td_post" border="0" id=td_post></A>
	</DIV>
<!--         翻 页         -->
	<DIV>
		<a href="/list">上一页</a>|
		<a href="/list">下一页</a>
	</DIV>

	<DIV class="t">
		<TABLE cellSpacing="0" cellPadding="0" width="100%">		
			<TR>
				<TH class="h" style="WIDTH: 100%" colSpan="4"><SPAN>&nbsp;</SPAN></TH>
			</TR>
<!--       表 头           -->
			<TR class="tr2">
				<TD>&nbsp;</TD>
				<TD style="WIDTH: 80%" align="center">文章</TD>
				<TD style="WIDTH: 10%" align="center">作者</TD>
				<TD style="WIDTH: 10%" align="center">回复</TD>
			</TR>
<!--         主 题 列 表        -->
<%--<c:forEach var="board" items="${boardList}">--%>
	<c:forEach var="topic" items="${board.topicList}">
			<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>

				<TD style="FONT-SIZE: 15px">
					<A href="/detail">${topic.title}</A>
				</TD>
				<TD align="center">t</TD>
				<TD align="center">2</TD>
			</TR>
	<%--</c:forEach>--%>
</c:forEach>
			
			<%--<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>
				<TD style="FONT-SIZE: 15px">
					<A href="/detail">哈哈</A>
				</TD>
				<TD align="center">abc</TD>
				<TD align="center">1</TD>
			</TR>
			
			<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>
				<TD style="FONT-SIZE: 15px">
					<A href="/detail">发水了</A>
				</TD>
				<TD align="center">abc</TD>
				<TD align="center">0</TD>
			</TR>
			
			<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>
				<TD style="FONT-SIZE: 15px">
					<A href="/detail">发水</A>
				</TD>
				<TD align="center">abc</TD>
				<TD align="center">0</TD>
			</TR>
			
			<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>
				<TD style="FONT-SIZE: 15px">
					<A href="/detail">笑话5则</A>
				</TD>
				<TD align="center">abc</TD>
				<TD align="center">0</TD>
			</TR>
			
			<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>
				<TD style="FONT-SIZE: 15px">
					<A href="/detail">最新大片</A>
				</TD>
				<TD align="center">abc</TD>
				<TD align="center">0</TD>
			</TR>
			
			<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>
				<TD style="FONT-SIZE: 15px">
					<A href="/detail">纯净水</A>
				</TD>
				<TD align="center">abc</TD>
				<TD align="center">0</TD>
			</TR>
			
			<TR class="tr3">
				<TD><IMG src="../../image/topic.gif" border=0></TD>
				<TD style="FONT-SIZE: 15px">
					<A href="/detail">这边风景好</A>
				</TD>
				<TD align="center">abc</TD>
				<TD align="center">0</TD>
			</TR>--%>
			
		</TABLE>
	</DIV>
<!--            翻 页          -->
	<DIV>
		<a href="/list">上一页</a>|
		<a href="/list">下一页</a>
	</DIV>
</DIV>
<!--             声 明          -->
<BR/>
<CENTER class="gray">Oriental Boyi Education
Information Technology Co.,Ltd 版权所有</CENTER>

</BODY>
</HTML>
