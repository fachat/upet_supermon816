
all: upsupermon




upsupermon.o65: upsupermon.a65 supermon816.a65
	xa -XCA65 -R -w -bt 4094 -P $@.lst -o $@ $<

upsupermon: upsupermon.o65
	reloc65 -v -bt 4094 -X -o $@ $<


clean: 
	rm -f upsupermon upsupermon.o65 upsupermon.o65.lst
