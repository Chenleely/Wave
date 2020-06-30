<%@ page import="java.util.List" %>
<%@ page import="com.wave.po.User" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.springframework.ui.Model" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Luozhihua
  Date: 2020/6/29
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <title>Retina Dashboard</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="robots" content="" />
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="stylesheet" href="css/style.css" media="all" />
    <!--[if IE]><link rel="stylesheet" href="css/ie.css" media="all" /><![endif]-->
</head>
<body>
<div class="testing">
    <header class="main">
        <h1><strong>Wave</strong>后台管理</h1>
        <input type="text" value="搜索" />
    </header>
    <section class="user">
        <div class="profile-img">
            <p><img src="images/uiface2.png" alt="" height="40" width="40" />欢迎回来!</p>
        </div>
        <div class="buttons">
            <button class="ico-font">&#9206;</button>
            <span class="button dropdown">
			<a href="#">通知<span class="pip">4</span></a>
			<ul class="notice">
				<li>
					<hgroup>
						<h1>You have a new task</h1>
						<h2>Report web statistics week by week.</h2>
					</hgroup>
					<p><span>14:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1>New comment</h1>
						<h2>Comment on <em>About page</em> by Darren.</h2>
					</hgroup>
					<p><span>11:04</span></p>
				</li>
				<li>
					<hgroup>
						<h1>Broken link</h1>
						<h2>We've spotted a broken link on the <em>Blog page</em>.</h2>
					</hgroup>
					<p><span>10:46</span></p>
				</li>
				<li>
					<hgroup>
						<h1>User report</h1>
						<h2><em>Lee Grant</em> has been promoted to admin.</h2>
					</hgroup>
					<p><span>09:57</span></p>
				</li>
			</ul>
		</span>
            <span class="button dropdown">
			<a href="#">收件箱<span class="pip">6</span></a>
			<ul class="notice">
				<li>
					<hgroup>
						<h1>Hi, I need a favour</h1>
						<h2>John Doe</h2>
						<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
					</hgroup>
					<p><span>11:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1><span class="icon">&#59154;</span>Hi, I need a favour</h1>
						<h2>John Doe</h2>
						<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
					</hgroup>
					<p><span>11:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1><span class="icon">&#59154;</span>Hi, I need a favour</h1>
						<h2>John Doe</h2>
						<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
					</hgroup>
					<p><span>11:24</span></p>
				</li>
			</ul>
		</span>
            <span class="button">直播</span>
            <span class="button">帮助</span>
            <span class="button blue"><a href="index.html">注销</a></span>
        </div>
    </section>
</div>
<nav>
    <ul>
        <li><a href="dashboard.jsp"><span class="icon">&#128711;</span>信息板</a></li>
        <!--<li>
            <a href="pages-table.html"><span class="icon">&#128196;</span> Pages</a>
            <ul class="submenu">
                <li><a href="page-new.html">Create page</a></li>
                <li><a href="page-timeline.html">View pages</a></li>
            </ul>
        </li>-->
        <li>
            <a href="files.jsp"><span class="icon">&#127748;</span>媒体<span class="pip">7</span></a>
            <ul class="submenu">
                <li><a href="files-upload.jsp">Upload file</a></li>
                <li><a href="files.jsp">View files</a></li>
            </ul>
        </li>
        <!--<li>
            <a href="blog-timeline.html"><span class="icon">&#59160;</span> Blog <span class="pip">12</span></a>
            <ul class="submenu">
                <li><a href="blog-new.html">New post</a></li>
                <li><a href="blog-table.html">All posts</a></li>
                <li><a href="comments-timeline.html">View comments</a></li>
            </ul>
        </li>-->
        <li><a href="statistics.jsp"><span class="icon">&#128202;</span>数据</a></li>
        <li class="section"><a href="users.jspl"><span class="icon">&#128101;</span>用户<span class="pip">3</span></a></li>
    </ul>
</nav>

<section class="alert">
    <form method="link" action="page-new.html">
        <button class="green">创建新页面</button>
    </form>
</section>
<section class="content">
    <form action="${pageContext.request.contextPath}/backstage/selectuser" method="post">
        <input type="submit" value="刷新">
    </form>
    <section class="widget">
        <header>
            <span class="icon">&#128100;</span>
            <hgroup>
                <h1>用户</h1>
                <h2>当前已注册的账号</h2>
            </hgroup>
            <aside>
				<span>
					<a href="#">&#9881;</a>
					<ul class="settings-dd">
						<li><label>Option a</label><input type="checkbox" /></li>
						<li><label>Option b</label><input type="checkbox" checked="checked" /></li>
						<li><label>Option c</label><input type="checkbox" /></li>
					</ul>
				</span>
            </aside>
        </header>

        <div class="content">
            <table id="myTable" border="0" width="125">
                <thead>
                <tr>
                    <th class="avatar">姓名</th>
                    <th>邮箱</th>
                    <th>密码</th>
                    <th>日期</th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<User> users= (List<User>) session.getAttribute("users");
                    for(User user:users){
                %>
                <tr>
                    <td class="avatar"><img src="images/uiface2.png" alt="" height="40" width="40" /><%=user.getUserName()%></td>
                    <td><%=user.getUserEmail()%></td>
                    <td><%=user.getUserPassword()%></td>
                    <td><%=user.getUserDate()%></td>
                </tr>
                <%
                    }
                %>

                <!--
                <tr>
                    <td class="avatar"><img src="images/uiface3.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>03/12/2012</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface4.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>31/12/2012</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface1.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>29/11/2012</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface2.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>09/01/2013</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface3.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>06/01/2013</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface4.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>17/05/2012</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface1.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>27/07/2011</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface2.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>27/09/2012</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface3.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>17/08/2011</td>
                </tr>
                <tr>
                    <td class="avatar"><img src="images/uiface4.png" alt="" height="40" width="40" /> John Doe</td>
                    <td>j.doe@mtsite.com</td>
                    <td>********</td>
                    <td>31/01/2012</td>
                </tr>-->
                </tbody>
            </table>
        </div>
    </section>
</section>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/jquery.wysiwyg.js"></script>
<script src="js/custom.js"></script>
<script src="js/cycle.js"></script>
<script src="js/jquery.checkbox.min.js"></script>
<script src="js/flot.js"></script>
<script src="js/flot.resize.js"></script>
<script src="js/flot-graphs.js"></script>
<script src="js/flot-time.js"></script>
<script src="js/cycle.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
</body>
</html>