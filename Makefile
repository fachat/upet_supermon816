
all: upsupermon




upsupermon.o65: upsupermon.a65 supermon816.a65
	xa -XCA65 -R -w -o $@ $<

upsupermon: upsupermon.o65
	reloc65 -v -X -o $@ $<
