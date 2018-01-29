<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>User List</title>
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
		<h1>User List</h1>
		<p><a href="#"><?= $this->Html->link('New User', ['action' => 'add']) ?></a></p>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Email</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<?php foreach ($users as $user): ?>
		    <tr>
		        <td><?= $user->id ?></td>
		       	<td><?= $user->email ?></td>
		        <td>
		            <?= $this->Form->postLink(
		                'Delete',
		                ['action' => 'delete', $user->id],
		                ['confirm' => 'Are you sure?']
		            )
		            ?>
		        </td>
		        <td>
		            <?= $this->Html->link('Edit', ['action' => 'edit', $user->id]) ?>
		        </td>
		    </tr>
    		<?php endforeach; ?>
		</table>
	</div>
</body>
</html>