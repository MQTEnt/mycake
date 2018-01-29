<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<style>
		#main{
			width: 80%;
			margin: 100px auto;
		}
	</style>
</head>
<body>
	<div id="main" class="users form">
		<?= $this->Flash->render() ?>
		<?= $this->Form->create() ?>
		<fieldset>
			<legend><?= __('Please enter your email and password') ?></legend>
			<?= $this->Form->control('email') ?>
			<?= $this->Form->control('password') ?>
		</fieldset>
		<?= $this->Form->button(__('Login')); ?>
		<?= $this->Form->end() ?>
	</div>
</body>
</html>