echo 'Número de filas y columnas en Saavedra2013 n1'
echo '- Número de filas:'
wc -l ../../CSB-master/unix/data/Saavedra2013/n1.txt
echo ''
echo '- Número de columnas'
head -n 1 ../../CSB-master/unix/data/Saavedra2013/n1.txt | wc -w
echo ''
echo 'Número de filas y columnas para cada archivo'
bash sandbox/Parte3.sh
echo ''
echo 'Archivo con más filas' 
bash sandbox/Parte3.sh | sort -n -r -k 2 | head -n 1
echo 'Archivo con más columnas'
bash sandbox/Parte3.sh | sort -n -r -k 3 | head -n 1
