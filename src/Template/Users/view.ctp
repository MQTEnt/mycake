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
		li{
			list-style-type: none;
		}
	</style>
</head>
<body>
	<div id="main">
		<h1>Detail User</h1>
		<h4>ID: <?= $user->id ?></h1>
		<p>Email: <?= $user->email ?></p>
		<ul>
			<?php
				foreach($role_names as $name)
					echo '<li> &#9745; '.$name.'</li>'
			?>
		</ul>
	</div>
</body>
</html>