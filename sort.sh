#!/bin/bash -x

echo "enter the numbers"

read a b c

one=$((a+b*c))

two=$((a*b+c))

three=$((c+a/b))

four=$((a%b+c))

declare -a store

store[one]=$one

store[two]=$two

store[three]=$three

store[four]=$four

echo ${store[@]}

count=0

for i in one two three four

do

	arr[count++]=${store[$i]}

done

temp=0

len=${#arr[@]}

for ((i=0;i<$len;i++))

do

	for((j=0;j<$len;j++))

	do

		if [ ${arr[$i]} -gt ${arr[$j]} ]

		then

			temp=${arr[$i]}

			arr[$i]=${arr[$j]}

			arr[$j]=$temp

		fi

	done

done

echo "descending order"

echo ${arr[@]}

for ((i=0;i<$len;i++))

do

        for((j=0;j<$len;j++))

        do

                if [ ${arr[$i]} -lt ${arr[$j]} ]

                then

                        temp=${arr[$i]}

                        arr[$i]=${arr[$j]}

                        arr[$j]=$temp

                fi

        done

done

echo "ascending order"

echo ${arr[@]}
