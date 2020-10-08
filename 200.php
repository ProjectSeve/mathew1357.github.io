<?php
header("HTTP/1.1 503 Service Temporarily Unavailable");
header("Status: 503 Service Temporarily Unavailable");
header("Retry-After: 3600");
?>
<!DOCTYPE html>
<html>
<head>
<title>Site is temporarily unavailable due to maintenance</title>
</head>
<body>
<h1>Site is temporarily unavailable due to maintenance</h1>
<p>We expect to have the site back up within 4 hours.</p>
</body>
</html>
