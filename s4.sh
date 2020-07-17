mkdir -p /backup
mapfile -t arr << (diff -qr /backup /etc)
for file in "${arr[@]}" ; 
do
cp "${file}" /backup