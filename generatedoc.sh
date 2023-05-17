HTMLOUTPUT="build/htmldoc/StarLasuOverview.html"
PDFOUTPUT="build/pdfdoc/StarLasuOverview.pdf"

sh preparedoc.sh

pandoc -c css/documentation.css -s build/source.md --metadata pagetitle="StarLasu Overview" -o $HTMLOUTPUT

pandoc -c css/documentation.css -H configuration/listings-setup.tex --variable colorlinks=true build/source.md --listings  --metadata pagetitle="StarLasu Overview" -o $PDFOUTPUT







