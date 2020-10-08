$sapi_type = php_sapi_name();
if (substr($sapi_type, 0, 3) == 'cgi')
    header(':', true, 404);
header('X-PHP-Response-Code: 404', true, 404);
