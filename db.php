<?
$db_host = "localhost";
$db_user = "root";
$db_password = "";
$db_schema = "guestbook";

$db = mysql_connect($db_host,$db_user,$db_password) or die(mysql_error());
mysql_select_db($db_schema,$db);
mysql_query('set names utf8');
?>