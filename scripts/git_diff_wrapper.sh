#!/bin/sh
# git uses a fixed 7 params
DIFFMERGE_EXE=/Applications/DiffMerge.app/Contents/MacOS/DiffMerge
exec ${DIFFMERGE_EXE} --nosplash "$2" "$5" | cat
