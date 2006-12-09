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
		{foreach item=movie_title from=$movie_list}
			<div>
				<a href="movie.php?movie={$movie_title}">{$movie_title}</a>
			</div>
		{/foreach}
	</body>
</html>