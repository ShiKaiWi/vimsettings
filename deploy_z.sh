echo "update submodule z..."
git submodule init bash_utils/z
git submodule update bash_utils/z
echo "done"

echo "deploy the z command..."
if [ ! -d ~/.zc ];then
    mkdir ~/.zc
    cp -r ./bash_utils/z ~/.zc
fi
echo "done"

green=`tput setaf 2`
reset=`tput sgr0`
echo "you must append the line: '${green}source ~/.zc/z/z.sh${reset}' to your bash config"
