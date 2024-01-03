#!/bin/bash
#

echo "Counting from 1 to 10: "

for i in {1..10}
do
	echo $i
done
echo -e "\n"
echo "Files in the current directory: "
for file in *
do
	if [ -f "$file" ]; then
		echo "$file"
	fi
done
echo -e "\n"
fruits=("Apple" "Orange" "Banana" "Cherry" "Grapes")
echo "List of fruits:"
for fruit in "${fruits[@]}";
do
	echo "$fruits"
done
echo -e "\n"
echo "Creating directories dir1, dir2, dir3"
for dir in dir1 dir2 dir3
do
rmdir $dir
echo "Directory '$dir' created."
done
echo -e "\n"
echo "creating users.."
for i in `cat list`
do
userdel $i
echo "created user $i"
done
