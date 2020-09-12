

if($#argv == 0) then
    echo "Number arguments $#argv"
    exit
else if($#argv == 1) then
    set arg_1=$1
    echo "Number arguments $#argv : $arg_1 "
    exit
else if ($#argv == 2) then
    set arg_1=$1
    set arg_2=$2
    echo "Number arguments $#argv : $arg_1  $arg_2"
    exit
else 
    echo "Number arguments $#argv : $argv "
endif

set arg_length = $#argv

foreach arg_n ( $argv  ) 
    echo "foreach arg - $arg_n"
end


###---  Commands Tried 
###---  csh ~/Training/UNIX/Examples/ReadingUnix_args.csh
###---  csh ~/Training/UNIX/Examples/ReadingUnix_args.csh arg1
###---  csh ~/Training/UNIX/Examples/ReadingUnix_args.csh arg1 arg2
###---  csh ~/Training/UNIX/Examples/ReadingUnix_args.csh arg1 arg2 arg3

