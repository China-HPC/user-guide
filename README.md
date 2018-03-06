# user-guide
Super HPC User Guide


## Build

### Manual build

1. Install Docker and pull the image from Docker Hub:
```
docker pull ansiz/docker-asciidoctor-cn
```
2. Clone the document repository to any $Directory:
```
git clone https://github.com/China-HPC/user-guide
cd user-guide
```
3. HTML output
```
docker run -v $Directory:/documents/ --rm --name asciidoc-to-html ansiz/docker-asciidoctor-cn asciidoctor -D dist *.adoc
cp -r images dist/images
```
4. PDF output
```
docker run -v $Directory:/documents/ --rm --name asciidoc-to-pdf ansiz/docker-asciidoctor-cn asciidoctor-pdf -D dist -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicCN *.adoc
```
### Auto build

make some changes, commit and push to https://github.com/China-HPC/user-guide,
`Travis` will build and deploy content to https://github.com/China-HPC/user-guide-dist automatically

