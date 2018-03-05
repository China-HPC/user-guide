html:
	asciidoctor -D dist *.adoc
	cp -r images dist/
pdf: 
	asciidoctor-pdf -D dist -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN index.adoc
clean:
	rm -rf dist
