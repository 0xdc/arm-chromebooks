all: hp_chromebook_11_g1.html samsung_arm_chromebook.html
sections = $(shell find section -type f -iname "*.adoc")

%.html: %.adoc $(sections)
	asciidoc $<
