#!/usr/bin/env bash

find ./content -type f -name '*.png' | xargs -P 8 -I {} sh -c 'cwebp -q 75 $1 -o "${1%.png}.webp"' _ {} \;
