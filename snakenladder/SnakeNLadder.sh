#bin/bash -x
player1=1
number=0
ladder=1
snake=2
option=0
position=0
function play()
{
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
}
play
