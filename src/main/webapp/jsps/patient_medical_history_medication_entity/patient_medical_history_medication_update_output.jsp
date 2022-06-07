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
	History ID	：<input type="text" name="history_id" value="${patient_medical_history_medication.history_id }"/>
	<span style="color: red; font-weight: 900">${errors.history_id }</span>
	<br/>
	
	
	Medication  ：<input type="text" name="medication" value="${patient_medical_history_medication.medication }"/>
	<span style="color: red; font-weight: 900">${errors.medication }</span>
	<br/>
	
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/PatientMedicalHistoryMedicationServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="history_id" value="${patient_medical_history_medication.history_id  }"/>
		<br/>
	

	
	
	Medication ：<input type="text" name="medication" value="${patient_medical_history_medication.medication }"/>
	<span style="color: red; font-weight: 900">${errors.medication }</span>
	<br/>
	
	<input type="submit" value="Update Patient_medical_history_medication"/>
</form>

</body>
</html>
