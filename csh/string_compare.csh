#!/bin/tcsh -f

set  strg_list = " \
    r0p0:r0p1 \
    r0p0:r1p0 \
    r0p0-012:r0p0 \
    r0p0:r0p0-012 \
    r1p0:r0p0-012 \
    r1p1:r1p0-012 \
"

foreach strg (`echo  $strg_list`)
    set strg1 = `echo $strg | cut -d: -f1 `
    set strg2 = `echo $strg | cut -d: -f2 `
    if ( `echo $strg1 $strg2  | awk '{ print ($1 > $2) ? "1" : "0" }'` ) then 
       echo "$strg1  greater than $strg2"
    else 
       echo "$strg2  greater than $strg1"
    endif
end
