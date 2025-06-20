#!/bin/bash
# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "========================="

# Input values
read -p "Enter Principal amount: " principal
read -p "Enter Rate of interest: " rate
read -p "Enter Time period (years): " time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "Simple Interest = $simple_interest"
echo "Total Amount = $(echo "scale=2; $principal + $simple_interest" | bc)"
