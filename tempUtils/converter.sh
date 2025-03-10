#!/bin/sh

for hdr in Win32Headers/*.h; do
    hnl="Win32HeadersNewlisp/$(basename $hdr .h).nl"
    echo "converting" $hdr "to" $hnl
    cat $hdr |
	awk -f normalizer.awk |
	awk -f converter.awk > $hnl
done
