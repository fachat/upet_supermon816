
all: upsupermon




upsupermon: upsupermon.a65
	xa -XCA65 -w -o $@ $<


