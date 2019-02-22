#!/bin/sh

message=""
push=0
addAll=0
for arg do
    case ${arg} in 
        -p|--push)
            push=1
            ;;
        -a)
			addAll=1
			;;
		-ap|-pa)
			addAll=1
			push=1
			;;
		*)
            message=${arg}    
            ;;
    esac

done

if [ "$addAll" -eq "0" ]; then
	git commit -m "$message"
else 
	git add .
	git commit -m "$message"
fi

if [[ ${push} > 0 ]]
then
    git push    
fi
