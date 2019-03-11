<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">

</head>
<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

	<a class="navbar-brand mr-1" href="index.html">Admin Page</a>

	<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
		id="sidebarToggle" href="#">
		<i class="fas fa-bars"></i>
	</button>

	<!-- Navbar Search -->
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	</form>

	<!-- Navbar -->
	<ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
		</a>
			<div class="dropdown-menu dropdown-menu-right"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#">Settings</a> <a
					class="dropdown-item" href="#">Activity Log</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#" data-toggle="modal"
					data-target="#logoutModal">Logout</a>
			</div></li>
	</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link"
				href="adminPage.jsp"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>조회 / 변경</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="registPage.jsp">
					<i class="fas fa-fw fa-table"></i> <span>등록</span>
			</a></li>
		</ul>

		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><span>조회 / 변경</span></li>
				</ol>

				<!-- Icon Cards-->
				<div class="row"></div>

				<div>
					<!-- 			allBurgerList -->
				</div>
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Data Table Example
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>체인번호</th>
										<th>브랜드</th>
										<th>메뉴명</th>
										<th>단품가격</th>
										<th>세트가격</th>
										<th>칼로리</th>
										<th>이미지 경로</th>
										<th>저장 버튼</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="burger" items="${allBurgerList}">
										<tr>
											<td><input type="number" name="chain_no" value="${burger.chain_no}" style="width: 30px;"/></td>
											<td>${burger.chain_name}</td>
											<td>
												<input type="text" name="menu_name" value="${burger.menu_name}" />
												<span name="menuNm">${burger.menu_name}</span>
											</td>
											<td>
												<input type="number" name="single_price" value="${burger.single_price}"  style="width: 100px;"/>
												<span name="singlePr">${burger.single_price}</span>
											</td>
											<td>
												<input type="number" name="set_price" value="${burger.set_price}" style="width: 100px;" />
												<span name="setPr">${burger.set_price}</span>
											</td>
											<td>
												<input type="number" name="calory" value="${burger.calory}" style="width: 100px;" />
												<span name="cal">${burger.calory}</span>
											</td>
											<td>
												<input type="text" name="img_url" value="${burger.img_url}" style="width: 100px;"/>
												<span name="imgUr">${burger.img_url}</span>
											</td>
											<td><button>저장</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 PM</div>
				</div>

			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
			<div class="container my-auto">
				<div class="copyright text-center my-auto">
					<span>Copyright © Your Website 2019</span>
				</div>
			</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>
	<script src="js/demo/chart-area-demo.js"></script>
	<script>
		$("span[name=menuNm]").hide();
		$("span[name=singlePr]").hide();
		$("span[name=setPr]").hide();
		$("span[name=cal]").hide();
		$("span[name=imgUr]").hide();
// 		$("#menuNm").hide();
	</script>
</body>
</html>