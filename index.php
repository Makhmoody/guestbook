<html>
<head>
	<link rel="stylesheet" href="/css/index.css">
</head>
<body>
<div class="container">
	<h1>Гостевая книга</h1>
	<center>
		<div class="inline">
			<label class="">User Name</label>
			<input id="username" type="text">
			
			<label class="">E-mail</label>
			<input id="email" type="text">
			
			<label class="">Homepage</label>
			<input id="homepage" type="text">
		</div>
		<div class="inline">
			<label class="">Text</label>
			<textarea id="text" type="text"></textarea>
		</div>
		<div id="btn">Отправить</div>
	</center>
	<div id="page">
		Страницы<br>
		<div id="page_container"></div>
	</div>
	<div id="sort">
		<b>Сортировать по</b>
		<select id="sort_select">
			<option value="1">Username (по возрастанию)</option>
			<option value="2">Username (по убыванию)</option>
			<option value="3">E-mail (по возрастанию)</option>
			<option value="4">E-mail (по убыванию)</option>
			<option value="5">Date (по возрастанию)</option>
			<option value="6">Date (по убыванию)</option>
		</select>
	</div>
	<div id="messages"></div>
</div>
</body>
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/messages.js"></script>
<script src="/js/index.js"></script>
</html>