#Aliases
alias runningvms="VBoxManage list runningvms"

#Functions
wtf()
{
    if [ -z "$1" ]; then
       echo -e 'Usage: wtf [regex] ([path])'
    else
       if [ -z "$2" ]; then
           baseDir="."
       else
           baseDir="$2"
       fi
       grep -HIRn "$1" "$baseDir" 2>/dev/null | more
    fi;
}
