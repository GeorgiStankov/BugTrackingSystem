<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Developers</title>

<%@ include file="head.jsp"%>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Developers</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">All current developers</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<table width="100%"
						class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Role</th>
								<th>Date</th>
							</tr>
						</thead>

						<c:if test="${not empty Devs }">
							<tbody>
								<c:forEach var="s" items="${Devs}">
									<tr>
										<td>${s.id}</td>
										<td><a href="<c:url value="/developers/view/${s.id}"/> ">
											${s.name}</a></td>
										<td>${s.role}</td>
										<td>${s.date}</td>
									</tr>
								</c:forEach>

							</tbody>
						</c:if>
					</table>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->

</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<%@ include file="footer.jsp"%>