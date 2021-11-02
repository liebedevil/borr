pkill screen
echo "Name Set With: $1"
echo "Power set On: Level $2"
sleep 15
screen -d -m ./liebe.sh $1 $2
