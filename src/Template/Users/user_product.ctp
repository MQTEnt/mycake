<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Product of user id <?php=$user->id ?></title>
	<style>
		#main{
			width: 80%;
			margin: 100px auto;
		}
		#main h1{
			text-align: center;
		}
		#main h4{
			text-align: right;
		}
	</style>
</head>
<body>
	<div id="main">
		<?php if($curUserEmail): ?>
			<h4>Hello, <strong><?= $curUserEmail?></strong></h4>
		<?php else: ?>
			<h4><?= $this->Html->link('Login', ['action' => 'login']) ?> </h4>
		<?php endif; ?>
		<h1>Product List</h1>
		<p><a href="#"><?= $this->Html->link('New Product', ['action' => 'add']) ?></a></p>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Description</th>
				<th>User ID</th>
			</tr>
			<?php foreach ($products as $product): ?>
		    <tr>
		        <td><?= $product->id ?></td>
		       	<td><?= $product->name ?></td>
		       	<td><?= $product->description ?></td>
		       	<td><?= $product->user_id ?></td>
		    </tr>
    		<?php endforeach; ?>
		</table>
	</div>
</body>
</html>