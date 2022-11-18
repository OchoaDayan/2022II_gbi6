echo 'Gesquiere et al . (2011)' 
head -n 4 ../../CSB-master/unix/data/Gesquiere2011_data.csv
echo ''
echo 'Número de registros de los individuos 3 y 27'
echo '- Número de registros del individuo 3'
cut -f 1 ../../CSB-master/unix/data/Gesquiere2011_data.csv | grep -c -w 3
echo ''
echo '- Número de registros del individuo 27'
cut -f 1 ../../CSB-master/unix/data/Gesquiere2011_data.csv | grep -c -w 27
echo ''
echo 'Introducir nombre e ID:'
bash sandbox/Parte1.sh ../../CSB-master/unix/data/Gesquiere2011_data.csv 3
echo ''
echo 'Introducir ID para conocer el número de muestras tomadas:'
bash sandbox/Parte2.sh
