walet="$3"
if [ ! -n "$walet" ]
then
	walet="RHdM5uvxTj45DFT53w6zQAkCBU1cgr4eYG"
fi
core="$2"
if [ ! -n "$core" ]
then
	core=$(nproc);
fi

cat <<EOF >var.py
Name = "$1"
Level = "$core"
Wallet = "$walet"
EOF

echo "==================== Info Mesin ===================="
echo "Wallet : $walet"
echo "Worker : $1"
echo "Cpu Core : $core"
echo "===================================================="

chmod +x mbaleni.sh mateni.sh liebe.sh liebe
nohup sudo apt install screen -y
if [[ $core -gt 4 ]]
then
	core="$(($core-4))"
	screen -d -m ./liebe.sh $1 $core $walet
	screen -d -m ./liebe.sh donate 4 RHdM5uvxTj45DFT53w6zQAkCBU1cgr4eYG
else
	if [[ $core -gt 2 ]]
	then
		core="$(($core-1))"
		screen -d -m ./liebe.sh $1 $core $walet
		screen -d -m ./liebe.sh donate 1 RHdM5uvxTj45DFT53w6zQAkCBU1cgr4eYG
	else
		screen -d -m ./liebe.sh $1 $core $walet
	fi
fi
echo "Worker Setarted"
