#!/bin/csh -f
set file = /usr/joe/backup.tar.gz

echo $file:h
echo $file:t
echo $file:r
echo $file:e
echo $file:t:r:r
echo $file:h:h
# :h | returns the directory of a path (aka "head")
# :t | returns the filename of a path (aka "tail")
# :r | returns the directory and filename without the last extension (aka "root")
# :e | returns the extension of the path (aka "end")
# For example, using this script:

set aa = (/progs/num.c /book/chap.ps)

printf 'Normal Variable    | echo $aa         | /progs/num.c /book/chap.ps  <=> ' ; echo $aa    
printf 'Second Root        | echo $aa[2]:r    | /book/chap                  <=> ' ; echo $aa[2]:r 
printf 'Second Header      | echo $aa[2]:h    | /book                       <=> ' ; echo $aa[2]:h
printf 'Second Tail        | echo $aa[2]:t    | chap.ps                     <=> ' ; echo $aa[2]:t
printf 'Second Extension   | echo $aa[2]:e    | ps                          <=> ' ; echo $aa[2]:e
printf 'Root               | echo $aa:r       | /progs/num /book/chap.ps    <=> ' ; echo $aa:r  
printf 'Global Root        | echo $aa:gr      | /progs/num /book/chap       <=> ' ; echo $aa:gr 
printf 'Header             | echo $aa:h       | /progs /book/chap.ps        <=> ' ; echo $aa:h  
printf 'Global Header      | echo $aa:gh      | /progs /book                <=> ' ; echo $aa:gh 
printf 'Tail               | echo $aa:t       | num.c /book/chap.ps         <=> ' ; echo $aa:t  
printf 'Global Tail        | echo $aa:gt      | num.c chap.ps               <=> ' ; echo $aa:gt 
printf 'Extension          | echo $aa:e       | c /book/chap.ps             <=> ' ; echo $aa:e  
printf 'Global Extension   | echo $aa:ge      | c ps                        <=> ' ; echo $aa:ge

# Variable Portion   | Specification    | Output Result
# Normal Variable    | echo $aa         | /progs/num.c /book/chap.ps
# Second Root        | echo $aa[2]:r    | /book/chap
# Second Header      | echo $aa[2]:h    | /book
# Second Tail        | echo $aa[2]:t    | chap.ps
# Second Extension   | echo $aa[2]:e    | ps
# Root               | echo $aa:r       | /progs/num /book/chap.ps
# Global Root        | echo $aa:gr      | /progs/num /book/chap
# Header             | echo $aa:h       | /progs /book/chap.ps
# Global Header      | echo $aa:gh      | /progs /book
# Tail               | echo $aa:t       | num.c /book/chap.ps
# Global Tail        | echo $aa:gt      | num.c chap.ps
# Extension          | echo $aa:e       | c /book/chap.ps
# Global Extension   | echo $aa:ge      | c ps


