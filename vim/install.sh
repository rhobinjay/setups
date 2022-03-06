#!/bin/bash


# INSTALL VIM
if [ ! $(command -v vim) ]; then
   echo "##### Installing vim #####"
   if   [ $(command -v apt) ]; then apt install vim -y;
   elif [ $(command -v apk) ]; then apk add vim -y;
   elif [ $(command -v yum) ]; then yum install vim -y;
   else echo "Please install vim manually" && exit 1;
   fi
fi

# SETUP VIM
web_downloader=""
if   [ $(command -v curl) ]; then web_downloader="curl";
elif [ $(command -v wget) ]; then web_downloader="wget";
else echo "curl and wget are not found" && exit 1;
fi

$web_downloader -o ~/.vimrc https://raw.githubusercontent.com/rhobinjay/setups/master/vim/.vimrc

mkdir -p ~/.vim/colors
$web_downloader -o ~/.vim/colors/predawn.vim https://raw.githubusercontent.com/rhobinjay/setups/master/vim/.vim/colors/predawn.vim

echo "Done"
