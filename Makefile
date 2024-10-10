deploy:
	git add .
	git commit -m "update index.html"
	git push

pandoc-convert-out-pdf:
	# install python-weasyprint first
	pandoc -f html index.html -t pdf --pdf-engine=weasyprint -o x.pdf
