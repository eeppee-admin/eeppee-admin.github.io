deploy: pandoc-convert-out-pdf
	git add .
	git commit -m "update index.html"
	git push

pandoc-convert-out-pdf:
	# install `python-weasyprint pandoc, adobe-source-han-serif-otc-fonts` at archlinux
	pandoc -f html index.html -t pdf -V CJKmainfont="Source Han Serif CN" --pdf-engine=weasyprint -o x.pdf
