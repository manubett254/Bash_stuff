#!/usr/bin/env bash 

#for loop

#for loop with items lists

echo "for loop demo:"
for person in marleen teiyo diana; do 
	echo "I have loved $person"
done

#for loop with numbers
echo "demo 1"

for i in {1..5}; do
	echo " number: $i"
	
done

echo "demo 2"

for ((i=1; i<5; i++)); do 
	echo "number = $i"
done

echo "for loop assignments"

for i in {1..5}; do 
	echo $i
done

echo "WHILE LOOP"

count=1
while [[ $count -le 5 ]]; do 
	echo "Count: $count"
	((count++))
done

 
x=0
until [[ $x -eq 3 ]]; do
	echo "x is $x"
	((x++))
done

 

fruits=("apple" "banana" "mango")

echo "First fruit: ${fruits[0]}"

echo "all fruits: ${fruits[@]}"

for f in "${fruits[@]}"; do
	echo "Fruit: $f"
done

echo "Array size : ${#fruits[@]}"
















