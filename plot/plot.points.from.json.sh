

if [ $# -lt 1 ]; then
    echo "$0 floor_airdocs.json"
    exit 1
fi

tmpout=$(mktemp)
fin=$1

cat $fin | tr -d ',' |  awk '/"x"/{x=$2; getline; print x, $2}' > $tmpout

cat <<EOF | gnuplot 

set term png size 1000,1000
set size ratio -1 1,1
set xlabel 'Meters'
set ylabel 'Meters'
set xtics 2
set ytics 2
set grid 
set out "$1.png"
plot "$tmpout"  using 1:2 w lp t "$fin", \
     '' using 1:2:(\$0+1) w labels offset 2 t ''
EOF

echo generated $fin.png 
rm $tmpout 

