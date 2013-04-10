<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<h1>Please enter information below:</h1>
<cfform method="post">
    First Name:  <cfinput type="text" name="firstname"><br />
    Social Security: <cfinput type="text" name="SSN" mask="999-99-9999"><br />
    Phone: <cfinput type="text" name="phone" mask="(999) 999-9999"><br />
    <input type="submit" />
</cfform>
</body>
</html>
