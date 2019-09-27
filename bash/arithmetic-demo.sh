#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
read -p "Input1? " firstnumber
read -p "Input2? " secondnumber
sum=$((firstnum + secondnum))
sub=$((firstnumber - secondnumber))
multiply=$((firstnumber * secondnumber))
remainder=$((firstnumber % secondnumber))
power =$((firstnumber**secondnumber))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
$firstnumber multiplied by $secondnumber is $multiply
$firstnumber subtractng by $secondnumber is $sub
Displaying the $firstnumber raised to the power of the $secondnumber is $power
EOF
