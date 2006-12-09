<html>
	<head>
		<title>{$title}</title>
	</head>
	<body>
		<b>{$title}</b>
		<br/><br/>
		<div>
			<b>Movie List</b>
		</div>
		{foreach key=movie_id item=movie_title from=$movie_list}
			<div>
				<a href="index.php?action=show&mid={$movie_id}">{$movie_title}</a>
			</div>
		{/foreach}
	</body>
</html>