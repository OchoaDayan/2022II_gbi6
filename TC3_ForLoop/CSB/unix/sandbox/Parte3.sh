datos=../../CSB-master/unix/data/Saavedra2013/*.txt
for item in $datos
do
	filas=`cat $item | wc -l`
	columnas=`head -n 1 $item | tr -d ' ' | tr -d '\n'| wc -c`
	echo $item $filas $columnas
done
