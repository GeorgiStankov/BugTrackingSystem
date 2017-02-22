<%@page import="com.hackbulgaria.bugtracking.entities.Issue.IssueStatus"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.hackbulgaria.bugtracking.entities.Issue" %>
<%@ page import="java.util.List" %>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Issues</title>

<%@ include file="head.jsp"%>
<div id="page-wrapper">
		<div class="container" style="width:100%; padding-top:40px;">
			<% List<Issue> issues = (List<Issue>)request.getAttribute("Issues");
				String color;
				String logo = "resources/img/";
				for(Issue issue : issues){ 
					if (issue.getStatus() == IssueStatus.NEW){
						color = "red";
						logo += "bug.png";
					}
					else if (issue.getStatus() == IssueStatus.IN_PROGRESS){
						color = "yellow";
						logo += "caterpillar.png";
					} else {
						color = "green";
						logo += "butterfly.png";
					}
				%>
					<div class="panel panel-<%=color%>">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-2">
									<img src=<%=logo %>>
								</div>
								
								<div class="col-xs-2">
									<div class="row">
										<h3><%=issue.getTitle() %></h3>
									</div>
									<div class="row">
										<p><%=issue.getDescription() %></p>
									</div>
									<div class="row">
										<i class="fa fa-calendar-o" aria-hidden="true"> <%=issue.getDate() %></i>
									</div>
								</div>
								<div class="col-xs-8 text-right">
									<div class="huge"><%=issue.getStatus().toString() %></div>
									<div>Priority: <%=issue.getPriority().toString() %></div>
									<div>Type: <%=issue.getType().toString() %></div>
								</div>
							</div>
						</div>
						<% if (issue.getStatus() == IssueStatus.NEW) { %>
							<a href="<c:url value="/issues/assign/"/> ">
							<div class="panel-footer">
								<span class="pull-left">Assign</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
						 <% } %>
					</div>
			<% }%>
</div>
<%@ include file="footer.jsp"%>