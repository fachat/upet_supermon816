
TRG=upmon sermon serldr

all: $(TRG)



serldr: serldr.bas
	petcat -w40 -o $@ $<

upmon.o65: upmon.a65 supermon816.a65
	xa -XCA65 -R -w -bt 1023 -l $(basename $@).lab -P $(basename $@).lst -o $@ $<

sermon.o65: sermon.a65 supermon816.a65
	xa -XCA65 -R -w -bt 24574 -l $(basename $@).lab -P $(basename $@).lst -o $@ $<

%: %.o65
	reloc65 -v -X -o $@ $<


clean: 
	rm -f $(TRG) *.o65 *.lst *.lab
