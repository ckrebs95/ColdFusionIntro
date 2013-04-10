
<cfif thistag.executionmode is "start">
	
	<cfif ATTRIBUTES.section is "main">
		<cfset sectionname = "Main">
		<cfset mycolor="papayawhip">
	<cfelseif ATTRIBUTES.section is "products">
		<cfset sectionname = "Products">
		<cfset mycolor="lightblue">
	<cfelseif ATTRIBUTES.section is "aboutus">
		<cfset sectionname = "About Us">
		<cfset mycolor="yellow">
	<cfelseif ATTRIBUTES.section is "contactus">
		<cfset sectionname = "Contact Us">
		<cfset mycolor="lightgreen">	
	</cfif>
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<title>My Company - <cfoutput>#sectionname#</cfoutput></title>
	</head>
	
	<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0" bgcolor="<cfoutput>#mycolor#</cfoutput>">
	<table width="100%"  border="1">
	  <tr>
		<td colspan="2"><h1 align="center">My Company.com </h1></td>
	  </tr>
	  <tr valign="top">
		<td><p><a href="index.cfm">HOME</a><br>
			<cfif attributes.section IS "main">
				<cfinclude template="subnav-main.cfm">
			</cfif>	
			<a href="products.cfm">PRODUCTS</a><br>
			<cfif attributes.section IS "products">
				<cfinclude template="subnav-products.cfm">
			</cfif>	
			<a href="aboutus.cfm">ABOUT US</a><br>
			<cfif attributes.section IS "aboutus">
				<cfinclude template="subnav-aboutus.cfm">
			</cfif>
			<a href="contactus.cfm">CONTACT US</a><br>
			<cfif attributes.section IS "contactus">
				<cfinclude template="subnav-contactus.cfm">
			</cfif>
		</p>
		<p>&nbsp;      </p></td>
		<td>
	
<cfelse>
	
		</td>
	  </tr>
	  <tr>
		<td colspan="2"><div align="center">Copyright &copy; <cfoutput>#Year(Now())#</cfoutput> - My Company.com </div></td>
	  </tr>
	</table>
	</body>
	</html>
</cfif>