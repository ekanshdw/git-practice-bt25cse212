#!/bin/bash
echo "Enter your name:"
read name
if [ -z "$name" ]; then
  echo "Name cannot be empty. Please run again and type your name."
else
  echo "Hello, $name! Welcome to Git Lab."
fi
