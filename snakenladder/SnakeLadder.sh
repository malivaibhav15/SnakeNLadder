bin/bash -x
player=2
number=0
ladder=1
snake=2
option=0
position1=0
position2=0
count=0
winningPosition=100
function play()
{
   while [[ $position1 -lt $winningPosition && $position2 -lt $winningPosition ]]
   do
      for (( index=1;index<=$player;index++ ))
      do
         if [[ $index -eq 1 ]]
         then
            dice=$(((RANDOM%6)+1))
            ((count++))
            option=$((RANDOM%3))
            case $option in
               $number)
                  position1=$(($position1+$number))
                  ;;
               $ladder)
                  position1=$(($position1+$dice))
                  ;;
               $snake)
                  position1=$(($position1-$dice))
                  ;;
            esac
				 if [[ $position1 -lt 0 ]]
            then
               position1=0
            fi
            if [[ $position1 -gt 100 ]]
            then
               position1=$(($position1-$dice))
            fi
            if [[ $position1 -eq 100 ]]
            then
               echo "Player $index won the game"
               break
            fi
         fi
 			if [[ $index -eq 2 ]]
         then
            dice=$(((RANDOM%6)+1))
            ((count++))
            option=$((RANDOM%3))
            case $option in
               $number)
                  position2=$(($position2+$number))
                  ;;
               $ladder)
                  position2=$(($position2+$dice))
                  ;;
               $snake)
                  position2=$(($position2-$dice))
                  ;;
         	esac
         if [[ $position2 -lt 0 ]]
         then
            position2=0
         fi
 			if [[ $position2 -gt 100 ]]
            then
               position2=$(($position2-$dice))
            fi
            if [[ $position2 -eq 100 ]]
            then
               echo "Player $index won the game"
               break
            fi
         fi
      done
   done
      echo "Number of times dice rolled=$count"
}
play

