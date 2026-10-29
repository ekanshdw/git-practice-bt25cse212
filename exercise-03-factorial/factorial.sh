#!/bin/bash
echo "Enter a number:"
read n
if [ "$n" -lt 0 ]; then
  echo "Factorial is not defined for negative numbers"
  exit 1
fi
fact=1
for ((i=2; i<=n; i++)); do
  fact=$((fact * i))
done
echo "Factorial of $n is $fact"
