cp -r /home/d /home/backup
#diff -qr ./backup/d ./d
ls /home/backup/d>bp.txt
ls /home/d>d.txt
diff bp.txt d.txt >diff.txt
while read file; do
cp /home/backup/d/"${file}" home/d
echo "${file}"
done < diff.txt

