!/bin/bash

echo "Using a variable for list"

corners="SS_RCWC SS_CWC FF_RCWC FF_CWC"
for c in $corners
do
  echo "Compiling Corner = $c "
done


echo "----  Reading from Command return "
cat ./employees.txt

#----- Have to find the field separator as new line 

# IFV="\n"
# IFV="\r"  - Defualt takes space as delimiter
for line in `cat ~/Training/Bash/employees.txt`
  do
     echo "$line"
done




