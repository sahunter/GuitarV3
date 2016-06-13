
<%@ page  import="util.*,java.util.*,model.*"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap Core CSS -->
<link href="bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link
	href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">
	<link href="bower_components/bootstrap.min.js"
	rel="stylesheet">
	
</head>


<body>

<%									//?????????????
     HttpServletRequest req = (HttpServletRequest) request; 
  
	 %> 

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
		
		<h1 class="text-center">
			<a href="index.jsp">	GuitarV3.0</a>
			</h1>
		</div>
	</div>
	<!-- <div class="row-fluid">
		<div class="span12">
			<form class="form-search">
				<input class="input-medium search-query" type="text" /> <button type="submit" class="btn">查找</button>
			</form>
		</div>
	</div> -->
	<div class="row-fluid">
		<div class="span4">
		
		<form  action="searchguitar.do" method="post">
				<fieldset>
					 <legend>吉他分类</legend> 
					  <label>Type：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>	
					  <select name="type">
	 			<option value=""></option>
	 			<option value="Acoustic">Acoustic</option>
	 			<option value="Electric">Electric</option>
	 		  </select>
	 		<label>Builder:</label>
	 		<select name="builder">
	 			<option value=""></option>
	 			<option value=""></option>
	 			<option value="Fender">Fender</option>
	 			<option value="Martin">Martin</option>
	 			<option value="Gibson">Gibson</option>
	 			<option value="Collings">Collings</option>
	 			<option value="Olson">Olson</option>
	 			<option value="Ryan">Ryan</option>
	 			<option value="Prs">Prs</option>
	 		</select>
					  <label>Model:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="model"/>
 			
					 <br>
	 		 			  <label>numStrings</label><input type="text" name="numStrings" />
		<!--  <label>价格&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="price"/> -->	
					 
					 <label>BackWood</label><select name="backwood">
	 			<option value=""></option>
	 			<option value="Indian_Rosewood">Indian_Rosewood</option>
				<option value="Brazilian_Rosewood">Brazilian_Rosewood</option>
				<option value="Mahogany">Mahogany</option>
				<option value="Maple">Maple</option>
				<option value="Cocobolo">Cocobolo</option>
				<option value="Cedar">Cedar</option>
				<option value="Adirondack">Adirondack</option>
				<!-- <option value="ALDER">Alder</option> -->
				<option value="Alder">Alder</option>
				<option value="Sitka">Sitka</option>
	 		</select>
					  <label>TopWood</label><select name="topwood">
	 			<option value=""></option>
	 			<option value="Indian_Rosewood">Indian_Rosewood</option>
				<option value="Brazilian_Rosewood">Brazilian_Rosewood</option>
				<option value="Mahogany">Mahogany</option>
				<option value="Maple">Maple</option>
				<option value="Cocobolo">Cocobolo</option>
				<option value="Cedar">Cedar</option>
				<option value="Adirondack">Adirondack</option>
				<!-- <option value="ALDER">Alder</option> -->
				<option value="Alder">Alder</option>
				<option value="Sitka">Sitka</option>
	 		</select>
					  <br>
					  	<input type="submit" name="search" value="Search"/>	 	
			          
				</fieldset>
			</form>
		</div>
		<div class="span4">
		</div>
		<div class="span4">
		</div>
	</div>
	
	 <%-- <div class="row-fluid">
		<div class="span12">
		
		 <c:forEach var="bh" items="${requestScope.matchingGuitars}">
		
		<table class="table">
				<thead>
					<tr>
						<th>
						serialNumber
						</th>
						<th>
						price
						</th>
						<th>
						builder
						</th>
						<th>
						   model
						</th>
						
					    <th>
						type
						</th>
						<th>
							numStrings
						</th>	
					<th>
							backWood
						</th>		
						<th>
							topWood
						</th>	
					</tr>
				</thead>
				<tbody>
			
					<tr>
					<td>
							<input type="text" name="serialNumble" value="${bh.serialNumber}"/>
						</td>
						<td>
							<input type="text" name="price" value="${bh.price}"/>
						</td>
						<td>
							<input type="text" name="builder" value="${bh.spec.builder}"/>
						</td>
						<td>
							<input type="text" name="model" value="${bh.spec.model}"/>
						</td>
						<td>
							<input type="text" name="type" value="${bh.spec.type }"/>
						</td>
						<td>
							<input type="text" name="numStrings" value="${bh.spec.numStrings }"/>
						</td>
			<td>
							<input type="text" name="backwood" value="${bh.spec.backWood}"/>
						</td>
						
					<td>
							<input type="text" name="topWood" value="${bh.spec.topWood}"/>
						</td>
						
					</tr>	
					<tr class="error">
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr>
					<tr class="warning">
						<td>
						
						</td>
						<td>
							
						</td>
						<td>
						
						</td>
						<td>
						
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr>
					<tr class="info">
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr>
				</tbody>
			</table> --%>
			
	
	 <!-- <div class="pagination">
				<ul>
					<li>
						<a href="#">上一页</a>
					</li>
					<li>
						<a href="#">1</a>
					</li>
					<li>
						<a href="#">2</a>
					</li>
					<li>
						<a href="#">3</a>
					</li>
					<li>
						<a href="#">4</a>
					</li>
					<li>
						<a href="#">5</a>
					</li>
					<li>
						<a href="#">下一页</a>
					</li>
				</ul>
			</div> -->

		
		</div>
	</div>
</div>
	
</body>
</html>