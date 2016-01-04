post_md := /Users/agoldst/www/andrewgoldstone.com/source/_posts/2016-01-04-standards.md

post_files_dir := /Users/agoldst/www/andrewgoldstone.com/source/us-standards

post.md: post.Rmd
	R -e 'rmarkdown::render("$<")'

publish:
	mkdir -p $(post_files_dir)
	sed 's|post_files/figure-markdown|/us-standards|g' post.md \
	    > $(post_md)
	cp post_files/figure-markdown/* $(post_files_dir)

.PHONY: publish
