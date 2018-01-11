default:
	jekyll build
	rsync -rtvuh _site/* dreamhost:recipes.lane.sh/
