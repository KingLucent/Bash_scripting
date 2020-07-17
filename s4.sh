cp -r /home/d /home/backup
ls /home/backup/d>bp.txt
ls /home/d>d.txt
diff bp.txt d.txt >diff.txt
while read file; do
cp /home/backup/d/"${file}" home/d
done < diff.txt

