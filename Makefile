CFLAGS=-O2 -Wall
LDFLAGS=-lm

all: generate analyze record playback generate_psk analyze_psk downsample upsample
generate: generate.o
	gcc $(CFLAGS) $@.c -o $@ $(LDFLAGS)
analyze: analyze.o fourier.o
	gcc $(CFLAGS) $@.c fourier.o -o $@ $(LDFLAGS)
generate_psk: generate_psk.o
	gcc $(CFLAGS) $@.c -o $@ $(LDFLAGS)
analyze_psk: analyze_psk.o fourier.o
	gcc $(CFLAGS) $@.c fourier.o -o $@ $(LDFLAGS)
record: record.o
	gcc $(CFLAGS) $@.c -o $@ $(LDFLAGS)
playback: playback.o
	gcc $(CFLAGS) $@.c -o $@ $(LDFLAGS)
upsample: 
	gcc $(CFLAGS) convert.c -o upsample $(LDFLAGS)
downsample:
	gcc $(CFLAGS) -DDOWNSAMPLE convert.c -o downsample $(LDFLAGS)

clean:
	rm -rf *.o generate analyze record playback analyze_psk generate_psk downsample upsample
