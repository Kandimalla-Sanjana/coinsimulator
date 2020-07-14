#! /bin/bash
function coin()
{
coin=$((RANDOM%2))
if [ $coin -eq 0 ]
then
        echo "Heads"
else
        echo "Tails"
fi
}
heads=0
tails=0
while [ true ]
do
	res=$(coin)
	echo $res
	if [ $res == "Heads" ]
	then
		((heads++))
	else
		((tails++))
	fi
	read -p "Do you want to continue?if yes enter 1 else enter 0: " choice
	if [ $choice -eq 0 ]
	then
		echo "No.of times won by heads: "$heads
		echo "No.of times won by tails: "$tails
		break
	fi
done


