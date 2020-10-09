cd dictation-kit-4.5
./bin/osx/julius \
	-d model/lang_m/bccwj.60k.bingram \
	-v model/lang_m/bccwj.60k.htkdic \
	-h model/phone_m/jnas-tri-3k16-gid.binhmm \
	-hlist model/phone_m/logicalTri \
	-C other.jconf \
	-input mic \
	-demo
