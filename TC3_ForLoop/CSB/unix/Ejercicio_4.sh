echo 'Nombre de la columna correspondiente'
cut -d ',' -f $2 $1 | head -n 1
echo ''
echo 'Número de los distintos valores en la columna'
cut -d ',' -f $2 $1 | tail -n +2 | sort | uniq | wc -l
echo ''
echo 'Valor mínimo'
cut -d ',' -f $2 $1 | tail -n +2 | sort -n | head -n 1
echo ''
echo 'valor máximo'
cut -d ',' -f $2 $1 | tail -n +2 | sort -n -r | head -n 1
