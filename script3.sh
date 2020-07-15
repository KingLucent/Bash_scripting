d='pwd'
if [[ ! -f "$pw/u_n" ]]
then
        u="$USER"
        echo $USER > "u_n"

        crontab -l > crontab_log
        echo "* * * * * $d/script3.sh < $d/u_n" >> crontab_log
        crontab crontab_log
else 
        read u
fi

find . -type d -print0 | while read -d '' -r dir; do
    files=("$dir"/*)
    printf "%5d files in directory %s\n" "${#files[@]}" "$dir$
done
