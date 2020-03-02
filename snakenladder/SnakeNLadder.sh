#bin/bash -x
player1=1
number=0
ladder=1
snake=2
option=0
position=0
winningPosition=100
function play()
{
	while [[ $position -lt $winningPosition ]]
	do
		dice=$((RANDOM%6))
		option=$((RANDOM%3))
		case $option in
			$number)
				position=$(($position+$number))
				;;
			$ladder)
				position=$(($position+$dice))
				;;
			$snake)
				position=$(($position-$dice))
				;;
		esac
		if [[ $position -lt 0 ]]
		then
			position=0
		fi
	done
}
play
