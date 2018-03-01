html:
	asciidoctor -D dist *.adoc
pdf: 
	asciidoctor-pdf -D dist -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN index.adoc
clean:
	rm -rf dist
