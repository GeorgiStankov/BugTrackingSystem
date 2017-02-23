<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Login</title>

<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<c:url value="/resources/metisMenu/metisMenu.min.css"/>"
	rel="stylesheet">


<!-- Custom CSS -->
<link href="<c:url value="/resources/css/sb-admin-2.css"/>"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="<c:url value="/resources/morrisjs/morris.css"/>"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">

<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">

<link rel="icon" href="resources/img/favicon.png" sizes="16x16" type="image/png">
</head>

<body>
	<c:set var="root" value="${pageContext.request.contextPath}" />
	<div class="container" style="margin-top: 10%;">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
			<img src="<c:url value="resources/img/logo_256.png"/> " style="position:relative; display: block; margin:auto;"/>
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign In</h3>
					</div>
					<div class="panel-body">
						<form role="form" action="login" method="post">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail" id="userId" name="email"
										type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password" id="password"
										name="password" type="password" value="">
								</div>
								<!-- <div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">Remember Me
									</label>
								</div> -->
								<!-- Change this to a button or input when using this as a form -->
								<a href="" id="loginButton" class="btn btn-lg btn-success btn-block">Login</a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>