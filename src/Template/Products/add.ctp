<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Add new product</title>
	<link rel="stylesheet" href="/css/my-style.css">
</head>
<body>
	<div id="main">
		<h1>Add Product</h1>
		<?php
			echo $this->Form->create($product);
			echo $this->Form->input('name');
			echo $this->Form->input('description');
			echo $this->Form->button(__('Save user'));
			echo $this->Form->end();
		?>
	</div>
</body>
</html>