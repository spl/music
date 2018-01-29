# Build all PDFs
default: *.pdf

# Clean all PDFs and temporary files
clean:
	rm -f *.pdf .*.mscx,

# Build a PDF using MuseScore
%.pdf: %.mscx
	# Use xvfb for running MuseScore in a headless mode:
	# https://musescore.org/en/node/8970#comment-752056
	xvfb-run mscore --export-to $@ $<
