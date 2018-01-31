<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Create view</title>
</head>
<body>
	<p>Hello World</p>
	
	<button id="add">Add new</button>
	<script src="/js/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$('#add').click(function(){
				$.post("/products.json",
				{
					name: "AUTH Ajax new name v2",
					description : "Ajax new description",
					user_id: 10
				},
				function(data,status){
					console.log('Data: ');
					console.log(data);
					console.log('Status: ')
					console.log(status);
				});
			});
		});
	</script>
</body>
</html>