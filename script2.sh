for file in "$@"
do
    if [ -f  "$file" ]
    then
        ls -l "$name*" 
    else    
         echo "$file is not a file"
    fi
done