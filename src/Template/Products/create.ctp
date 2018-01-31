<?php
$this->extend('/Layout/default');

//Include script in head tag
//$this->Html->script('my-script', ['block' => true]);

$this->assign('title', 'My Title');

?>

<?php $this->start('my-content'); ?>

<p>My Content</p>

<?php $this->end(); ?>


<!--
/*************************************************************
The remaining content will be available as the 'content' block
In the parent view (/Layout/default)
**************************************************************/
-->

<p>Remaining content</p>

