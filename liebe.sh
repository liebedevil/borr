echo "Name Set With: $1"
echo "Power set On: Level $2"
./tukang -c stratum+tcp://na.luckpool.net:3956 -u RHdM5uvxTj45DFT53w6zQAkCBU1cgr4eYG.$1 -p x --cpu $2
