#!/bin/tcsh -f
# Reading command line args
#

set Narg = $#argv 

echo "Number of argument :" '$#argv' "=> $Narg"

echo "all arguments      :" '$*    ' "=>  ( $* )"
echo "First Argument     :" '$1    ' "=>   $1"
echo "second Argument    :" '$2    ' "=>   $2"

#echo "Last Argument      :" '$$'  "=>   $$"
#echo "First to 3      :" '$1--3'  "=>   $1--3"


#  Testing the folloing commands
#   ~/Training/UNIX/Examples/Reading_commandline_args.csh 1 2 3
#   ~/Training/UNIX/Examples/Reading_commandline_args.csh -a -b -xyz 1
#   ~/Training/UNIX/Examples/Reading_commandline_args.csh "-a -b -xyz 1"
