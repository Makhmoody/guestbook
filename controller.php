<?
require_once("db.php");

function check_variable($args){
    foreach ($args as $k => $v) $args[$k] = /*mysql_real_escape_string*/(strip_tags(htmlspecialchars($v)));
    return $args;
}

if(isset($_GET["add"])){
    $args = check_variable($_POST);
    $response = array();
	
	$query = "	INSERT INTO messages (ip, browser, username, email, homepage, text, created) 
				VALUES ('".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', '".$args['name']."', '".$args['email']."', '".$args['homepage']."', '".$args['usertext']."', '".date('Y-m-d H:i:s')."')";
	$result = mysql_query($query) or die(mysql_error());
	if($result){
		$response["error"] = 0;
	}
	else{
		$response["error"] = 1;
	};
    exit(json_encode($response));
}
else if(isset($_GET["get"])){
    $args = check_variable($_POST);
    $response = array();
	
	$query = "SELECT id, ip, browser, username, email, homepage, text, created FROM messages ";
	switch ($args["sort"]) {
		case 1:
			$query = $query."ORDER BY username ASC";
			break;
		case 2:
			$query = $query."ORDER BY username DESC";
			break;
		case 3:
			$query = $query."ORDER BY email ASC";
			break;
		case 4:
			$query = $query."ORDER BY email DESC";
			break;
		case 5:
			$query = $query."ORDER BY created ASC";
			break;
		case 6:
			$query = $query."ORDER BY created DESC";
			break;
	};
	
	$num = 25;
	$from = ($args["page"] -1)*$num;
	$query = $query." LIMIT ".$from.",".$num." ";
	
	$result = mysql_query($query) or die(mysql_error());
	if($result){
		$i = -1;
		$messages = array();
		while($message = mysql_fetch_array($result)) {
			$i++;
			$messages[$i]["id"] = $message["id"];
			$messages[$i]["ip"] = $message["ip"];
			$messages[$i]["browser"] = $message["browser"];
			$messages[$i]["username"] = $message["username"];
			$messages[$i]["email"] = $message["email"];
			$messages[$i]["homepage"] = $message["homepage"];
			$messages[$i]["text"] = $message["text"];
			$messages[$i]["created"] = $message["created"];
		};
		
		$query_page = mysql_query("SELECT COUNT(1) FROM messages");
		$result_page = mysql_fetch_array($query_page);
		$pages = ceil($result_page[0]/$num);
		
		$response["messages"] = $messages;
		$response["pages"] = $pages;
		$response["error"] = 0;
	}
	else{
		$response["error"] = 1;
	};
    exit(json_encode($response));
}
?>