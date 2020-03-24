#!/bin/bash -x
read -p "Enter three number : " a b c
echo "$a $b $c"

expr1="a + b *c"
expr2="a % b + c"
expr3="c + a / b"
expr4="a *b + c"

result1=$(( $a + $b * $c))
result2=$(( $a % $b + $c ))
result3=$(( $c + $a / $b ))
result4=$(( $a * $b + $c ))

echo $expr1 = $result1
echo $expr2 = $result2
echo $expr3 = $result3
echo $expr4 = $result4
