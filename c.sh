#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <first_number> <second_number> <choice>"
  echo "Choices: 1=Addition, 2=Subtraction, 3=Multiplication, 4=Division"
  exit 1
fi

num1=$1
num2=$2
choice=$3

case "$choice" in
  1)
    result=$(echo "$num1 + $num2" | bc)
    echo "Result: $result"
    ;;
  2)
    result=$(echo "$num1 - $num2" | bc)
    echo "Result: $result"
    ;;
  3)
    result=$(echo "$num1 * $num2" | bc)
    echo "Result: $result"
    ;;
  4)
    if [ "$num2" = "0" ]; then
      echo "Error: division by zero is not allowed."
      exit 1
    fi
    result=$(echo "scale=2; $num1 / $num2" | bc)
    echo "Result: $result"
    ;;
  *)
    echo "Invalid choice. Please select 1, 2, 3, or 4."
    exit 1
    ;;
esac
