<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/7/20
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
    <TITLE>欢迎访问学员论坛</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=gbk">
    <Link rel="stylesheet" type="text/css" href="style/style.css" />
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</HEAD>

<BODY>

<DIV>
    <IMG src="../../../image/logo.gif">
</DIV>
<!--      用户信息、登录、注册        -->

<DIV class="h">
    您尚未　<a href="/login">登录</a>
    &nbsp;| &nbsp; <A href="/reg">注册</A> |
</DIV>

<!--      主体        -->
<DIV class="t">
    <TABLE cellSpacing="0" cellPadding="0" width="100%">
        <TR class="tr2" align="center">
            <TD colSpan="2">论坛</TD>
            <TD style="WIDTH: 10%;">主题</TD>
            <TD style="WIDTH: 30%">最后发表</TD>
        </TR>
        <!--       主版块       -->
        <c:forEach var="boardtype" items="${boardtypeList}">
      <TR class="tr3">
            <TD colspan="4">${boardtype.boardtypename}</TD>
        </TR>
        <!--       子版块       -->
            <c:forEach var="board" items="${boardtype.boardList}">
         <TR class="tr3">
            <TD width="5%">&nbsp;</TD>
            <TH align="left">
                <IMG src="image/board.gif">
                <A href="/list">${board.boardname}</A>
            </TH>
            <TD align="center">${board.topiccount}</TD>
            <TH>
				<SPAN>
					<A href="/detail">${board.lasttopic.title}</A>
				</SPAN>
                <BR/>
                <SPAN>${board.lasttopic.user.uname}</SPAN>
                <SPAN class="gray"> <fmt:formatDate value="${board.lasttopic.publishtime}" pattern="YYYY-MM-DD HH-MM-SS"/> </SPAN>
            </TH>
        </TR>
            </c:forEach>
        </c:forEach>
        <%--
                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">WinForms</A>
                    </TH>
                    <TD align="center">7</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">谁帮我看看我的程序</A>
                        </SPAN>
                        <BR/>
                        <SPAN>hello</SPAN>
                        <SPAN class="gray">[ 2017-07-30 10:27 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">ADO.NET</A>
                    </TH>
                    <TD align="center">3</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">好</A>
                        </SPAN>
                        <BR/>
                        <SPAN>t</SPAN>
                        <SPAN class="gray">[ 2017-07-30 08:33 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">ASP.NET</A>
                    </TH>
                    <TD align="center">2</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">这段代码是什么意思</A>
                        </SPAN>
                        <BR/>
                        <SPAN>qcl</SPAN>
                        <SPAN class="gray">[ 2017-07-30 10:31 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD colspan="4">Java技术</TD>
                </TR>
                <!--       子版块       -->

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">Java基础</A>
                    </TH>
                    <TD align="center">2</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">我是新手，我刚开始学习Java</A>
                        </SPAN>
                        <BR/>
                        <SPAN>qcl</SPAN>
                        <SPAN class="gray">[ 2017-07-30 10:29 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">JSP技术</A>
                    </TH>
                    <TD align="center">1</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">超人来了</A>
                        </SPAN>
                        <BR/>
                        <SPAN>超人</SPAN>
                        <SPAN class="gray">[ 2017-07-27 12:39 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">Servlet技术</A>
                    </TH>
                    <TD align="center">2</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">Interface Servlet</A>
                        </SPAN>
                        <BR/>
                        <SPAN>hello</SPAN>
                        <SPAN class="gray">[ 2017-07-27 17:37 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">Eclipse应用</A>
                    </TH>
                    <TD align="center">2</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">这个东西很好用</A>
                        </SPAN>
                        <BR/>
                        <SPAN>qcl</SPAN>
                        <SPAN class="gray">[ 2017-07-30 10:31 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD colspan="4">数据库技术</TD>
                </TR>
                <!--       子版块       -->

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">SQL Server基础</A>
                    </TH>
                    <TD align="center">2</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">这段SQL错在哪了?</A>
                        </SPAN>
                        <BR/>
                        <SPAN>qcl</SPAN>
                        <SPAN class="gray">[ 2017-07-30 10:30 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">SQL Server高级</A>
                    </TH>
                    <TD align="center">2</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">呵呵</A>
                        </SPAN>
                        <BR/>
                        <SPAN>t</SPAN>
                        <SPAN class="gray">[ 2017-07-30 08:44 ]</SPAN>
                    </TH>
                </TR>

                <TR class="tr3">
                    <TD colspan="4">娱乐</TD>
                </TR>
                <!--       子版块       -->

                <TR class="tr3">
                    <TD width="5%">&nbsp;</TD>
                    <TH align="left">
                        <IMG src="image/board.gif">
                        <A href="/list">灌水乐园</A>
                    </TH>
                    <TD align="center">23</TD>
                    <TH>
                        <SPAN>
                            <A href="/detail">灌水</A>
                        </SPAN>
                        <BR/>
                        <SPAN>t</SPAN>
                        <SPAN class="gray">[ 2017-07-30 08:37 ]</SPAN>
                    </TH>
                </TR>--%>

    </TABLE>
</DIV>

<BR/>
<CENTER class="gray">Oriental Boyi Education
    Information Technology Co.,Ltd 版权所有</CENTER>
</BODY>
</HTML>
