#!/bin/tcsh -f

set dir = `pwd`
if( -d $dir ) then
    echo "$dir is directory"
else 
    echo "$dir is not a directory"
endif


