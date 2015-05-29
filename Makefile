build:
	git checkout master && \
		asciidoc -a toc alps_siren.asciidoc

deploy: build
	mv ./alps_siren.html /tmp/alps_siren.html && \
		git checkout gh-pages && \
		mv /tmp/alps_siren.html ./index.html && \
		git add index.html && \
		git commit -m "Update `date`" && \
		git push origin gh-pages && \
		git checkout master

.PHONY: build deploy
