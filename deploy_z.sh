echo "deploy the z command..."
if [ ! -d ~/.zc ];then
    mkdir ~/.zc
    cp -r ./bash_utils/z ~/.zc
fi
echo "it will be done if you append the line: 'source ~/.zc/z/z.sh' to your bash config"
