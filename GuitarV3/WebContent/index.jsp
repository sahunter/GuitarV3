<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- link href="bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link
	href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">
	<link href="bower_components/bootstrap.min.js"
	rel="stylesheet"> -->
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h1>
				GuitarV3.0
			</h1>
		</div>
	</div>
	<div class="row-fluid">
	<div class="span12">
			<h3>
				Seller:
			</h3>
		</div>
	<div class="span12">
		</div>
		<div class="span6">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="addguitar.jsp">AddGuitar</a>
				</li>
				<li>
					<a href="sellersearchguitar.jsp">SearchGuitar</a>
				</li>
				<!-- <li class="disabled">
					<a href="#">信息</a>
				</li> -->
				
			</ul>
		</div>
		<div class="span6">
		<h3>
				Customer:
			</h3>
			<div class="tabbable" id="tabs-641620">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="searchguitar.jsp" data-toggle="tab">SearchGuitar</a>
					</li>
					<li class="active">
						<a href="Customerguitar.jsp" data-toggle="tab">CustomerGuitar</a>
					</li>
				</ul>
				
		</div>
	</div>
</div>
</body>
</html>