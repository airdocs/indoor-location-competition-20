cat F1.pla.json | tr -d ',' |  awk '/"x"/{x=$2; getline; print x, $2}' > pla 
