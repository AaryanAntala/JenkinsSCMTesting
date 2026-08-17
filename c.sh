#!/bin/bash

echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1-4): " choice

read -p "Enter first number: " num1
read -p "Enter second number: " num2

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
