cat <<EOF >var.py
Name = $1
Level = $2
EOF
chmod +x mbaleni.sh mateni.sh liebe.sh liebe
#sudo apt install screen -y
./liebe.sh $1 $2
