#npx markdown-pdf documentation/README.md -s css/documentation.css -o build/StarLasu\ Overview.pdf
pandoc -c css/documentation.css -s documentation/README.md -o build/StarLasu\ Overview.html
cp -R css build
