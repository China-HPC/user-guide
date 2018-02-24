html:
	asciidoctor *.adoc
pdf: 
	asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN index.adoc
clean:
	rm -f *.html *.pdf
