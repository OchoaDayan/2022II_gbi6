echo 'Tamaño del archivo Marra2014_data.fasta.'
ls -lh ../../CSB-master/unix/data/Marra2014_data.fasta
echo ''
echo 'Creación de copia de Marra2014_data.fasta en sandbox con nombre my_file.fasta.'
cp ../../CSB-master/unix/data/Marra2014_data.fasta sandbox/my_file.fasta
ls sandbox
echo ''
echo 'Reemplazo los 2 espacios originales por una coma.'
cat sandbox/my_file.fasta | tr -s ' ' ',' | head -n 5
echo ''
echo 'Número de isogrupos unicos en el archivo.'
grep '>' sandbox/my_file.fasta | tr -s ' ' ',' | cut -d ',' -f 4 | uniq | wc -l
echo ''
echo 'Contig con el mayor número y cantidad de lecturas.'
grep '>' sandbox/my_file.fasta | tr -s ' ' ',' | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1
