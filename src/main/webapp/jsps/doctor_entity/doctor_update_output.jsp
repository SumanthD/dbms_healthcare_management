<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Entity</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update Entity</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Doctor_ID	        ：<input type="text" name="doctor_id" value="${doctor.doctor_id }" disabled/>
	<span style="color: red; font-weight: 900">${errors.doctor_id }</span>
	<br/>
	First Name  :<input type="text" name="first_name" value="${doctor.first_name }" disabled/>
	<span style="color: red; font-weight: 900">${errors.first_name }</span>
	<br/>
	Last Name   ：<input type="text" name="last_name" value="${doctor.last_name }" disabled/>
	<span style="color: red; font-weight: 900">${errors.last_name }</span>
	<br/>
	Email       ：<input type="text" name="email" value="${doctor.email }" disabled/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	Phone	    ：<input type="text" name="contact_no" value="${doctor.contact_no }" disabled/>
	<span style="color: red; font-weight: 900">${errors.contact_no }</span>
	<br/>
	Experience	：<input type="text" name="experience" value="${doctor.experience }" disabled/>
	<span style="color: red; font-weight: 900">${errors.experience }</span>
	<br/>
	Department	：<input type="text" name="department" value="${doctor.department }" disabled/>
	<span style="color: red; font-weight: 900">${errors.department }</span>
	<br/>
	
	Address	    ：<input type="text" name="address" value="${doctor.address }" disabled/>
	<span style="color: red; font-weight: 900">${errors.address }</span>
	<br/>
	Hospital_ID	        ：<input type="text" name="hospital_id" value="${doctor.hospital_id }" disabled/>
	<span style="color: red; font-weight: 900">${errors.hospital_id }</span>
	<br/>
	
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/DoctorServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="doctor_id" value="${doctor.doctor_id }"/>
		<br/>
	First Name  :<input type="text" name="first_name" value="${form.first_name }"/>
	<span style="color: red; font-weight: 900">${errors.first_name }</span>
	<br/>
	Last Name   ：<input type="text" name="last_name" value="${form.last_name }"/>
	<span style="color: red; font-weight: 900">${errors.last_name }</span>
	<br/>
	Email       ：<input type="text" name="email" value="${form.email }"/>
	<span style="color: red; font-weight: 900">${errors.email }</span>
	<br/>
	Phone	    ：<input type="text" name="contact_no" value="${form.contact_no }"/>
	<span style="color: red; font-weight: 900">${errors.contact_no }</span>
	<br/>
	Experience	：<input type="text" name="experience" value="${form.experience }"/>
	<span style="color: red; font-weight: 900">${errors.experience }</span>
	<br/>
	Department	：<input type="text" name="department" value="${form.department }"/>
	<span style="color: red; font-weight: 900">${errors.department }</span>
	<br/>
	
	Address	    ：<input type="text" name="address" value="${form.address }"/>
	<span style="color: red; font-weight: 900">${errors.address }</span>
	<br/>
	Hospital_ID	        ：<input type="text" name="hospital_id" value="${form.hospital_id }"/>
	<span style="color: red; font-weight: 900">${errors.hospital_id }</span>
	<br/>
	
	<input type="submit" value="Update Doctor"/>
</form>

</body>
</html>
