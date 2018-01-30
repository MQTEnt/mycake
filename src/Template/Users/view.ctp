<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Detail user</title>
	<style>
		#main{
			width: 80%;
			margin: 100px auto;
			text-align: center;
		}
	</style>
</head>
<body>
	<div id="main">
		<h1>Detail User</h1>
		<h4>ID: <?= h($user->id) ?></h1>
		<p>Email: <?= h($user->email) ?></p>
	</div>
</body>
</html>