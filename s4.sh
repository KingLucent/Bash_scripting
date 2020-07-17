
cp -r ./home/d ./home/d/backup
mapfile -t arr << "( diff -qr ./backup ./d )"
#arr = (diff -qr /home/backup /home/d)
for file in "${arr[@]}" ; 
do
cp "${file}" /backup
done

