#! /bin/csh

set colour = blue
set caption = "The most distant quasar observed is at redshift "
set z       = "Z value"
set flux_100 = 1.2345E-09
set n = 42
set _90 = -1

# The first four examples assign strings, and the last two assign integer values. 
# Yes the value of flux_100 is not a real number.
# Multi-word strings should be enclosed in " quotes. The spaces around the equals sign are necessary.

# You can also remove variables with the unset command. This accepts *?[ ] wildcards to match the names of the shell variables.

echo 'before unset - $?colour   ' $?colour      '- ' $colour    
echo 'before unset - $?caption  ' $?caption     '- ' $caption   
echo 'before unset - $?z        ' $?z           '- ' $z         
echo 'before unset - $?n        ' $?n           '- ' $n         
echo 'before unset - $?_90      ' $?_90         '- ' ${_90}     
echo 'before unset - $?flux_100 ' $?flux_100    '- ' $flux_100  

unset colour
unset flux_1??          # flux_1 followed by any pair of characters
unset [nx-z_]*          # starting with either n, x, y, or z 
                        

echo 'after unset - ' ' - $?colour   ' $?colour
echo 'after unset - ' ' - $?caption  ' $?caption  '- ' $caption
echo 'after unset - ' ' - $?z        ' $?z
echo 'after unset - ' ' - $?n        ' $?n
echo 'after unset - ' ' - $?_90      ' $?_90
echo 'after unset - ' ' - $?flux_100 ' $?flux_100


