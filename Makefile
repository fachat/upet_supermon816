
TRG=upmon

all: $(TRG)




%.o65: %.a65 supermon816.a65
	xa -XCA65 -R -w -bt 1023 -P $*.lst -o $@ $<

upmon: upmon.o65
	reloc65 -v -X -o $@ $<


clean: 
	rm -f $(TRG) *.o65 *.lst
