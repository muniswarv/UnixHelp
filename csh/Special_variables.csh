#! /bin/csh
     echo ${0}
     echo 'Number of arguments is       $#argv = ' $#argv
     echo 'Second argument                  $2 = ' $2
     echo 'Arguments in range (2-3) $argv[2-3] = ' $argv[2-3]
     echo 'All arguments                    $* = ' $*
     #  echo 'Last Argument              $argv[$] = ' $argv[$]

set var = "defined"
    echo '   Varaible define             ' $?var  '    $var = ' $var 
    echo '   Varaible not defined $no_var' $?no_var 
exit

#  | Syntax	| Meaning
#  | ${0}	| The name of the script being run
#  | $?name	| Returns 1 if the variable name is defined, or 0 if it is not defined
#  | $n	        | The value of the n argument passed to the script
#  | $argv[n]	| The value of the n argument passed to the script
#  | $#argv	| The number of arguments passed to the script
#  | $*	        | All the arguments supplied to the script
#  | $$  	| Process identification number (useful for making temporary files with unique names)
#

# 
# test cases
# Then we run it with four arguments.
#      % argex.csh "hello world" 42 3.14159 "(300:400,~100)"
#      argex.csh
#      Number of arguments is 4
#      42
#      42 3.14159
#      (300:400,~100)
