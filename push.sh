#! /bin/bash

## ./push 2

str='https://github.com/js202005082300/C_OpenGL.git'
echo $str
message=$(date +"%m-%d-%4Y %T")
echo $message

if [ -e '.git' ] ; then
    echo 'git ok'
else
    git init
    git config --global user.email "js201910271836@outlook.com"
    git config --global user.name "js"
    git remote add origin $str
    git branch -M main
fi

case $1 in
    1) echo 'Choix 1e commit'
        git pull $str
        git add *
        git commit -a -m \"$message\"
        git push -u origin main
        ;;
    2) echo 'Choix commit routine'
        git pull $str
        git add *
        git commit -a -m \"$message\"
        git push $str
        ;;
    *) echo 'Choisir 1 ou 2 !';;
esac