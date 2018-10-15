all: \
	index.html \
	samsung_arm_chromebook.html \
	samsung_arm_chromebook.wiki \
	hp_chromebook_11_g1.html \
	hp_chromebook_11_g1.wiki

sections = $(shell find section -type f)

%.html: %.adoc $(sections)
	asciidoc -a pygments -a $< $<

%.xml: %.adoc $(sections)
	a2x -f docbook -a $< -a wiki $<

%.wiki: %.xml
	pandoc -t mediawiki -f docbook $< -o $@
