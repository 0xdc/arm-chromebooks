all: hp_chromebook_11_g1.html samsung_arm_chromebook.html hp_chromebook_11_g1.wiki samsung_arm_chromebook.wiki
sections = $(shell find section -type f -iname "*.adoc")

%.html: %.adoc $(sections)
	asciidoc -a pygments $<

%.xml: %.adoc $(sections)
	a2x -f docbook $<

%.wiki: %.xml
	pandoc -t mediawiki -f docbook $< -o $@
