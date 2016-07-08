
post_md := /Users/agoldst/www/andrewgoldstone.com/content/post/2016-01-04-standards.md

post_files_dir := /Users/agoldst/www/andrewgoldstone.com/static/us-standards

post.md: post.Rmd
	R -e 'rmarkdown::render("$<")'

publish:
	mkdir -p $(post_files_dir)
	sed 's|src="figure/|src="/us-standards/|g' post.md > $(post_md)
	cp figure/* $(post_files_dir)

.PHONY: publish
