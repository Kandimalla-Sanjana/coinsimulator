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
while(( $heads<21 || $tails<21 || $heads!=$tails))
do
        res=$(coin)
        echo $res
        if [ $res == "Heads" ]
        then
                ((heads++))
        else
                ((tails++))
        fi
done
echo "It's a tie!Both heads and tails won "$heads" times"
while(($(($heads-$tails))<2 && $(($tails-$heads))<2))
do
         res=$(coin)
        echo $res
        if [ $res == "Heads" ]
        then
                ((heads++))
        else
                ((tails++))
        fi
done
echo "No.of times won by heads: " $heads
echo "No.of times won by tails: " $tails
if [ $heads -gt $tails ]
then
        diff=$(($heads-$tails))
        echo "Heads is the winner by "$diff" flips"
else
        diff=$(($tails-$heads))
        echo "Tails is the winner by "$diff" flips"
fi



