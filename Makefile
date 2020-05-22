PAN=                     \
  -s                      \
  --mathjax                \
  --from=markdown           \
  --table-of-contents        \
  -V numberLines=true         \
  --indented-code-classes=lua,numberLines

all: index.html

%.html:  %.md
	#	cat $< | pandoc $(PAN) --metadata title="$<" --css etc/style.css -o $@
	pandoc $< -o $@ $(PAN) --template template.html --css template.css --self-contained --toc --toc-depth 2
