<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
		<h1 class="text-center">
				<a href="index.jsp">	GuitarV3.0</a>
			</h1>
		</div>
	</div>
	<form  action="addguitar.do" method="post">
	<div class="row-fluid">
		<div class="span4">
		<label>serialNumber&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="serialNumber"/> 
		</div>
		<br>
		<div class="span4">
		<label>price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="price"/> 
		</div>
		<br>
		<div class="span4">
		</div>
	</div>
	<div class="row-fluid">
		<div class="span4">
		
		 <label>Type：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>	
					  <select name="type">
	 			<option value=""></option>
	 			<option value="Acoustic">Acoustic</option>
	 			<option value="Electric">Electric</option>
	 		  </select>
		</div>
		<br>
		<div class="span4">
		<label>Builder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	 		<select name="builder">
	 			<option value=""></option>
	 			<option value="Fender">Fender</option>
	 			<option value="Martin">Martin</option>
	 			<option value="Gibson">Gibson</option>
	 			<option value="Collings">Collings</option>
	 			<option value="Olson">Olson</option>
	 			<option value="Ryan">Ryan</option>
	 			<option value="Prs">Prs</option>
	 		</select>
		</div>
		<br>
		<div class="span4">
		<label>Model:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="model"/>
 			
					 <br>
		</div>
		<br>
	</div>
	
	<div class="row-fluid">
		<div class="span4">
		<label>numStrings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="numStrings" />
		</div>
		<br>
		<div class="span4">
		<label>BackWood&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><select name="backwood">
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
		</div>
		<br>
		<div class="span4">
		 <label>TopWood&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><select name="topwood">
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
		</div>
		<br>
	</div>
	  <br>
	<input type="submit" name="AddGuitar" value="AddGuitar"/>	
	</form>
</div>
</body>
</html>