<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Edit user</title>
	<link rel="stylesheet" href="/css/my-style.css">
</head>
<body>
	<div id="main">
		<h1>Edit User</h1>
		<?php
		echo $this->Form->create($user);
		echo $this->Form->input('email');
		echo $this->Form->input('password');
		echo $this->Form->button(__('Save User'));
		echo $this->Form->end();
		?>
	</div>
</body>
</html>