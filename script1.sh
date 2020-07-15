function check {
        echo  "Enter file name:" ;
        read name 
        if [ -z "$name" ] ; then
                echo "Invalid file name. Try again" ;
                name =""
                check
        fi

        if [[ "$name" != "${1%[[:space;]]*}" ]] ; then
                echo "More than one argument were given. Try again" ;
                name =""
                check
        fi
}
check

if test -f "${name}" ; then
        chmod +x "${name}"
fi


