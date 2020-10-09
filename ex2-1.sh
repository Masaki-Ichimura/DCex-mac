./dictation-kit-4.5/bin/osx/julius \
	-gram ./sample_grammars/railroad/railroad \
	-h ./dictation-kit-4.5/model/phone_m/jnas-tri-3k16-gid.binhmm \
	-hlist ./dictation-kit-4.5/model/phone_m/logicalTri \
	-input mic \
	-demo -charconv sjis utf-8
