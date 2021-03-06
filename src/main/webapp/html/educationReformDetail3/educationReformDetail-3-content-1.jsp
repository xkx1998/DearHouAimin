<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>教学研究改革-改革成果</title>
		<meta charset="utf-8">
		<link rel="icon" href="/images/dgut.jpg">
		<link rel="stylesheet" type="text/css" href="/style/normal.css">
		<link rel="stylesheet" type="text/css" href="/style/educationReform/normal.css">
		<link rel="stylesheet" type="text/css" href="/style/educationReform/educationReformDetail.css">
		<script type="text/javascript" src="/js/educationReformDetail/normal.js"></script>
		<style type="text/css">
			.content .mainContent .article>.present>ul>li {
				list-style: disc;
				/* 实心圆 */
				margin-bottom: 0.4em;
			}
			
			.content .mainContent .article>.present .fRight {
				float: right;
				color: #999;
			}
			
			.content .mainContent .article>.present .educationReformDetail-3-content-table,
			.content .mainContent .article>.present .educationReformDetail-3-content-table td {
				width: auto;
				border: 2px solid #04837e;
				border-collapse: collapse;
				/*合并边框*/
				text-align: center;
			}
			
			.content .mainContent .article>.present .educationReformDetail-3-content-table .th {
				column-span: all;
				font-weight: bold;
			}
		</style>
	</head>

	<body>
	<div id="top">
	<div class="header">
    <div class="topLine"></div>
    <section class="topwrap">
        <a href="index.jsp" class="logo"><img src="/images/logo.png">
            <h2 class="title">在线开放课程平台</h2></a>
    </section>
    <section class="logininAndUp">
        <a href="login.html">登录</a>
        <a href="register.html">注册</a>
    </section>
    <section class="nav yahei">
        <ul id="nav">
            <li class="title"><a href="index.jsp">首页</a></li>
            <li class="title" onmouseover="extend('1')" onmouseout="out('1')">
                <a href="/html/courseDetail-1.jsp">课程概况</a>
                <ul style="display: none;" id="first">
                    <li class="detail"><a href="/html/courseDetail-1.jsp" style="color: #fff;">课程简介</a></li>
                    <li class="detail"><a href="/html/courseDetail-2.jsp" style="color: #fff;">课程特色</a></li>
                    <li class="detail"><a href="/html/courseDetail-3.jsp" style="color: #fff;">教材与参考资料</a></li>
                    <li class="detail"><a href="/html/courseDetail-4.jsp" style="color: #fff;">历史沿革</a></li>
                </ul>
            </li>
            <li class="title" onmouseover="extend('2')" onmouseout="out('2')">
                <a href="/teacherTeam?type=courseManager">教师队伍</a>
                <ul style="display: none;" id="second">
                    <li class="detail"><a href="/teacherTeam?type=courseManager" style="color: #fff;">课程负责人</a></li>
                    <li class="detail"><a href="/teacherTeam?type=teacherTeam" style="color: #fff;">课程教学团队</a></li>
                    <li class="detail"><a href="/teacherTeam?type=lecturer" style="color: #fff;">主讲教师</a></li>
                    <li class="detail"><a href="/teacherTeam?type=trainingPlan" style="color: #fff;">青年教师培养</a></li>
                </ul>
            </li>
            <li class="title" onmouseover="extend('3')" onmouseout="out('3')">
                <a href="/html/educationalDetail-1.jsp">教学安排</a>
                <ul style="display: none;" id="third">
                    <li class="detail"><a href="/html/educationalDetail-1.jsp" style="color: #fff;">教学大纲</a></li>
                    <li class="detail"><a href="/servlet/CalendarServlet?method=show" style="color: #fff;">教学日历</a></li>
                    <li class="detail"><a href="/html/educationalDetail-3.jsp" style="color: #fff;">教学内容</a></li>
                    <li class="detail"><a href="/html/educationalDetail-4.jsp" style="color: #fff;">授课计划</a></li>
                    <li class="detail"><a href="/html/educationalDetail-5.jsp" style="color: #fff;">教学难重点</a></li>
                    <li class="detail"><a href="/html/educationalDetail-6.jsp" style="color: #fff;">教学方法与手段</a></li>
                </ul>
            </li>
            <li class="title" onmouseover="extend('4')" onmouseout="out('4')">
                <a href="/html/educationReformDetail-1.html">教学研究改革</a>
                <ul style="display: none;" id="fourth">
                    <li class="detail"><a href="/html/educationReformDetail-1.html" style="color: #fff;">教学改革措施</a></li>
                    <li class="detail"><a href="/html/educationReformDetail-2.html" style="color: #fff;">教学改革立项</a></li>
                    <li class="detail"><a href="/html/educationReformDetail-3.html" style="color: #fff;">教学改革成果</a></li>
                    <li class="detail"><a href="/html/educationReformDetail-4.html" style="color: #fff;">教学改革表彰和奖励</a></li>
                </ul>
            </li>
            <li class="title" onmouseover="extend('5')" onmouseout="out('5')">
                <a href="/ShowResourceServlet.do?resType=1">教学资源</a>
                <ul style="display: none;" id="fifth">
                    <li class="detail"><a href="/ShowResourceServlet.do?resType=1" style="color: #fff;">课程课件</a></li>
                    <li class="detail"><a href="/ShowResourceServlet.do?resType=2" style="color: #fff;">教学录像</a></li>
                    <li class="detail"><a href="/ShowResourceServlet.do?resType=3" style="color: #fff;">习题库</a></li>
                    <li class="detail"><a href="/ShowResourceServlet.do?resType=4" style="color: #fff;">案例库</a></li>
                    <li class="detail"><a href="/ShowResourceServlet.do?resType=5" style="color: #fff;">实验任务</a></li>
                </ul>
            </li>
            <li class="title" onmouseover="extend('6')" onmouseout="out('6')">
                <a href="/OpenCoursePlanServlet?method=showFront">教学管理</a>
                <ul style="display: none; " id="sixth">
                    <li class="detail"><a href="/OpenCoursePlanServlet?method=showFront"
                                          style="color: #fff;">开课计划</a></li>
                    <li class="detail"><a
                            href="/ClassInfoServlet?method=LoadClassInfo&classInfoPageQuery=1"
                            style="color: #fff;">上课班级</a></li>
                    <li class="detail"><a
                            href="/ScoreServlet?method=LoadStudentEvalator&StudentpageQuery=1"
                            style="color: #fff;">学生成绩</a></li>
                    <li class="detail"><a href="/class_list_Servlet?method=LoadStudentClassList&classListpageQuery=1"
                                          style="color: #fff;">班级名册</a></li>
                    <li class="detail"><a href="/HomeworkServlet?method=LoadHomework&HomeworkpageQuery=1" style="color: #fff;">学生作业案例</a>
                    </li>
                </ul>
            </li>
            <li class="title" onmouseover="extend('7')" onmouseout="out('7')">
                <a href="/Expert_EvaluationServlet?method=getOneContent&number=0&type=2&n=1">教学效果</a>
                <ul style="display: none; " id="seven">
                    <li class="detail"><a href="/Expert_EvaluationServlet?method=getOneContent&number=0&type=2&n=1" style="color: #fff;">校外专家评价</a>
                    </li>
                    <li class="detail"><a href="/Expert_EvaluationServlet?method=getOneContent&number=0&type=1&n=2" style="color: #fff;">校内督导评价</a>
                    </li>
                    <li class="detail"><a href="/teacher_evalution_servlet?method=LoadTeacherEvalator&EvalatorpageQuery=1" style="color: #fff;">教师自我评价</a>
                    </li>
                    <li class="detail"><a
                            href="/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=1"
                            style="color: #fff;">校内学生评价</a></li>
                    <li class="detail"><a href="/social_evalution_servlet?method=LoadSocialEvalator&EvalatorpageQuery=1" style="color: #fff;">社会评价</a>
                    </li>
                    <li class="detail"><a href="/TeachFileServlet?method=LoadHomework&TeachFilepageQuery=1">教学评估及相关文件</a>
                    </li>
                </ul>
            </li>
            <li class="title" onmouseover="extend('8')" onmouseout="out('8')">
                <a href="../html/QQ.jsp">教学互动</a>
                <ul style="display: none;" id="eighth">
                    <li class="detail"><a href="../html/QQ.jsp" style="color: #fff;">QQ群</a></li>
                    <li class="detail"><a href="../servlet/WeChatServlet?type=normalShow" style="color: #fff;">微信群</a></li>
                    <li class="detail"><a href="../servlet/TeachingArrangementServlet?type=showLeaveMsg" style="color: #fff;">师生互动</a></li>
                </ul>
            </li>
        </ul>
    </section>
</div>
	</div>

		<article class="content">

			<section id="banner">
				<img src="/images/index/abouttop_03.jpg">
			</section>
			<section class="mainWrap relative">
				<div class="detailContent">
					<div class="column_1">
						<section class="leftNav">
							<h3>教学研究改革</h3>
							<ul>
								<li>
									<a href="/html/educationReformDetail-1.html">改革措施</a>
								</li>
								<li>
									<a href="/html/educationReformDetail-2.html">改革立项</a>
								</li>
								<li class="current">
									<a href="/html/educationReformDetail-3.html">改革成果</a>
								</li>
								<li>
									<a href="/html/educationReformDetail-4.html">改革表彰和奖励</a>
								</li>
							</ul>
						</section>
					</div>
					<div class="column_2 ">
						<article class="mainContent">
							<header class="contentNav">
								<nav class="nav">
									<a href="/index.html">首页</a>·
									<a href="/educationReformDetail-3.html">教学研究改革</a>·
									<a href="/educationReformDetail-3.html">改革成果</a>
								</nav>
								<h1>改革成果</h1>
							</header>
							<section class="article">
								<figure class="present">
									<!-- <img src="../images/educationReform/reformResult.jpeg" width="864" height="648" class="portrait"> -->
									<!--<img src="../images/index/President-z.gif">-->
									<!-- <ul>
								<li><a href="#">2012-2014年法学教师教改论文</a><span class="fRight">2017-05-03</span></li>
								<li><a href="#">2012-2014年法学教师教改论文</a><span class="fRight">2016-11-25</span></li>
							</ul> -->
							
									
										<table class="educationReformDetail-3-content-table">
											<tr>
												<td class="th">${requestScope.achievement.title}</td>
											</tr>
											<tr>
												<td class="thead">序号</td>
												<td class="thead">论文题目</td>
												<td class="thead">第一作者</td>
												<td class="thead">发表/出版时间</td>
												<td class="thead">发表刊物/论文集</td>
											</tr>
											<c:forEach items="${requestScope.achievement.achievementItems}" var="row1" >
										  		<tr>
											   <td>${row1.id}</td>
											   <td>${row1.title}</td>
											   <td>${row1.author}</td>
											   <fmt:formatDate var="myItemDate"
													value="${row1.publish_time}"
													pattern="yyyy-MM-dd" />
											   <td><fmt:formatDate pattern="yyyy-MM-dd" value="${row1.publish_time}" type="both"/></td>
											    <td>${row1.publication}</td>
											   </tr>
										   </c:forEach>
										</table>
									
								</figure>
							</section>

						</article>
					</div>				
					<div class="column_3">

					</div>
				</div>
			</section>
		</article>

<div id="bottom">
   <div class="inner">
        <ul>
            <li><a href="courseDetail-1.html">课程概况</a>
                <div class="detail">
                    <div><a href="courseDetail-1.jsp">课程简介</a></div>
                    <div><a href="courseDetail-2.jsp">课程特色</a></div>
                    <div><a href="courseDetail-3.jsp">教材与参考资料</a></div>
                    <div><a href="courseDetail-4.jsp">历史沿革</a></div>
                </div>
            </li>
            <li><a href="teacherTeam.html">教师队伍</a>
                <div class="detail">
                    <div><a href="teacherTeamDetail-1.html">课程负责人</a></div>
                    <div><a href="teacherTeamDetail-2.html">课程教学团队</a></div>
                    <div><a href="teacherTeamDetail-3.html">主讲教师</a></div>
                    <div><a href="teacherTeamDetail-4.html">青年教师培养</a></div>
                </div>
            </li>
            <li><a href="../html/educationalDetail-1.jsp">教学安排</a>
                <div class="detail">
                    <div><a href="../html/educationalDetail-1.jsp">教学大纲</a></div>
                    <div><a href="../servlet/CalendarServlet?method=show">教学日历</a></div>
                    <div><a href="../html/educationalDetail-3.jsp">教学内容</a></div>
                    <div><a href="../html/educationalDetail-5.jsp" style="color: #fff;">教学难重点</a></div>
                    <div><a href="../html/educationalDetail-5.jsp">教学重难点</a></div>
                    <div><a href="../html/educationalDetail-6.jsp">教学方法与手段</a></div>
                </div>
            </li>
            <li><a href="educationReformDetail-1.html">教学研究改革</a>
                <div class="detail">
                    <div><a href="educationReformDetail-1.html">改革措施</a></div>
                    <div><a href="educationReformDetail-2.html">改革立项</a></div>
                    <div><a href="educationReformDetail-3.html">改革成果</a></div>
                    <div><a href="educationReformDetail-4.html">改革表彰和奖励</a></div>
                </div>
            </li>
            <li><a href="teachResDetail-1.html">教学资源</a>
                <div class="detail">
                    <div><a href="teachResDetail-1.html">课程课件</a></div>
                    <div><a href="teachResDetail-2.html">教学录像</a></div>
                    <div><a href="teachResDetail-3.html">习题库</a></div>
                    <div><a href="ShowResourceServlet.do?resType=4">案例库</a></div>
                    <div><a href="teachResDetail-5.html">实验任务</a></div>
                </div>
            </li>
            <li><a href="admission.html">教学管理</a>
                <div class="detail">
                    <div><a href="/OpenCoursePlanServlet?method=showFront">开课计划</a></div>
                    <div><a href="/ClassInfoServlet?method=LoadClassInfo&classInfoPageQuery=1">上课班级</a></div>
                    <div><a href="/ScoreServlet?method=LoadStudentEvalator&StudentpageQuery=1">学生成绩</a></div>
                    <div><a href="/class_list_Servlet?method=LoadStudentClassList&classListpageQuery=1">班级名册</a></div>
                    <div><a href="/TeachFileServlet?method=LoadHomework&TeachFilepageQuery=1">学生作业案例</a></div>
                </div>
            </li>
            <li><a href="/Expert_EvaluationServlet?method=getOneContent&number=0&type=2&n=1">教学效果</a>
                <div class="detail">
                    <div><a href="/Expert_EvaluationServlet?method=getOneContent&number=0&type=2&n=1">校外专家评价</a></div>
                    <div><a href="/Expert_EvaluationServlet?method=getOneContent&number=0&type=1&n=2">校内督导评价</a></div>
                    <div><a href="/teacher_evalution_servlet?method=LoadTeacherEvalator&EvalatorpageQuery=1">教师自我评价</a></div>
                    <div><a href="/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=1">校内学生评价</a></div>
                    <div><a href="/social_evalution_servlet?method=LoadSocialEvalator&EvalatorpageQuery=1">社会评价</a></div>
                    <div><a href="/TeachFileServlet?method=LoadHomework&TeachFilepageQuery=1">教学评估及相关文件</a></div>
                </div>
            </li>
            <li><a href="../html/QQ.jsp">教学互动</a>
                <div class="detail">
                    <div><a href="../html/QQ.jsp">QQ群</a></div>
                    <div><a href="../servlet/WeChatServlet?type=normalShow">微信群</a></div>
                    <div><a href="../servlet/TeachingArrangementServlet?type=showLeaveMsg">师生互动</a></div>
                </div>
            </li>
        </ul>
    </div>
</div>
<div id="copyrights">
   <div class="mainWrap">
    <div class="link">
        <ul>
            <li>友情链接</li>
            <li><a href="http://www.dgut.edu.cn">东莞理工学院</a></li>
            <li><a href="http://jwc.dgut.edu.cn">东莞理工学院教务处</a></li>
            <li><a href="http://sw.dgut.edu.cn">东莞理工学院计算机与网络安全学院</a></li>
        </ul>
    </div>
    <div class="final">
        <ul>
            <li class="left">© 2018,UML Group 2</li>
            <li class="right">联系我们</li>
        </ul>
    </div>
</div>
</div>
	
	</body>

</html>