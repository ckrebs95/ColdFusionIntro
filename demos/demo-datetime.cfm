<html>
<head>
	<title>Demo-datetime</title>
</head>

<body>
<cfset todayDate = Now()>
<body>
<h3>DateFormat Example</h3>
<p>Today's date displayed using now() looks like this: <cfoutput>#todayDate#</cfoutput>.
<p>Using DateFormat, we can display that date in different ways:
<cfoutput>
<ul>
  <li>#DateFormat(todayDate)#
  <li>#DateFormat(todayDate, "mmm-dd-yyyy")#
  <li>#DateFormat(todayDate, "mmmm d, yyyy")#
  <li>#DateFormat(todayDate, "mm/dd/yyyy")#
  <li>#DateFormat(todayDate, "d-mmm-yyyy")#  
  <li>#DateFormat(todayDate, "ddd, mmmm dd, yyyy")#  
  <li>#DateFormat(todayDate, "d/m/yy")#
  <li>#DateFormat(todayDate, "short")#
  <li>#DateFormat(todayDate, "medium")#
  <li>#DateFormat(todayDate, "long")#    
  <li>#DateFormat(todayDate, "full")#
</ul>  
</cfoutput>  

</body>
</html>
