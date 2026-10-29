#!/bin/bash
while true; do
  echo "MENU: 1) Greet  2) Add  3) Even/Odd  4) Exit"
  echo "Enter your choice:"
  read choice
  case $choice in
    1) echo "Enter your name:"
       read name
       echo "Hello, $name!" ;;
    2) echo "Enter first number:"
       read a
       echo "Enter second number:"
       read b
       echo "Sum = $((a + b))" ;;
    3) echo "Enter a number:"
       read n
       if [ $((n % 2)) -eq 0 ]; then
         echo "$n is even"
       else
         echo "$n is odd"
       fi ;;
    4) echo "Goodbye!"
       break ;;
    *) echo "Invalid choice, try again" ;;
  esac
done
