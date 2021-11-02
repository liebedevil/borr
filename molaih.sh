cat <<EOF >var.py
Name = "$1"
Level = "$2"
EOF
echo "Name Set With: $1"
echo "Power set On: Level $2"
chmod +x mbaleni.sh mateni.sh liebe.sh liebe
sudo apt install screen -y
screen -d -m ./liebe.sh $1 $2
