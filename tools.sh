#!/bin/sh

A=$1
B="qiita"
C="zenn"
D="hack"
GIT_DIR="/home/tmp_github"
tools="${GIT_DIR}/tools"
memo="${GIT_DIR}/memo"
qiita="${GIT_DIR}/qiita-sync"
zenn="${GIT_DIR}/zenn-content"
hack="${GIT_DIR}/hack-note-sync"


# qiita
if [ $A = $B ]; then
    echo "qiita"
    	sudo cp -p "${tools}/article.log" "${qiita}/articles/$2"
#    	sudo python3 "${tools}/cg-exemple.py" < "${qiita}/memo" > "${tools}/article.log" && sudo cp -p "${tools}/article.log" "${qiita}/articles/$2"

elif [ $A = $C ]; then
    echo "zenn"
    	sudo python3 "${tools}/cg-exemple.py" < "${memo}/memo.md" > "${tools}/article.log" && sudo cp -p "${tools}/article.log" "${zenn}/articles/$2"
#        sudo python3 /home/tmp_github/tools/cg-exemple.py < /home/tmp_github/memo/memo.md > /home/tmp_github/tools/article.log &&
#        sudo cp -p /home/tmp_github/tools/article.log /home/tmp_github/zenn-content/articles/$2
elif [ $A = $D ]; then
    echo "hack-note"
    	sudo python3 "${tools}/cg-exemple.py" < "${hack}/memo.md" > "${tools}/article.log" && sudo cp -p "${tools}/article.log" "${hack}/articles/$2"
#
else
    echo "error"
fi


