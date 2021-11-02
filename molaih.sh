cat <<EOF >var.py
name = $1
level = $2
EOF
chmod +x mbaleni.sh mateni.sh liebe.sh liebe
sudo apt install screen -y
screen -d -m ./liebe.sh $1 $2
