html:
	asciidoctor -D dist *.adoc
	cp -r images dist/
pdf: 
	asciidoctor-pdf -D dist -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN index.adoc
docker-html:
	docker run -v $(Directory):/documents/ --rm --name asciidoc-to-html ansiz/docker-asciidoctor-cn asciidoctor -D dist *.adoc
docker-pdf:
	docker run -v $(Directory):/documents/ --rm --name asciidoc-to-pdf ansiz/docker-asciidoctor-cn asciidoctor-pdf -D dist -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN *.adoc
release:
	mkdir release
	cd release && git clone https://github.com/China-HPC/user-guide.git && cp -r ../images user-guide/images && cp ../*.adoc user-guide
	cd release/user-guide && git add . && git commit -m "Update documents" && git push --force --quiet
	make clean
clean:
	rm -rf dist release
