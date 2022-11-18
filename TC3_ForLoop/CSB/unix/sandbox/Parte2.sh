IDS=`tail -n +2 ../../CSB-master/unix/data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $IDS
do
	conteo=`bash sandbox/Parte1.sh ../../CSB-master/unix/data/Gesquiere2011_data.csv $id`
	echo 'ID:' $id ', Número de muestras:' $conteo
done
