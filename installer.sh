sudo wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
sudo rm -f postman.tar.gz
echo "\n*******************\nInstalling Binary\n********************\n"
sudo ln -s "/opt/Postman/Postman" "/usr/bin/postman"
echo "\n*******************\nCreating Desktop App\n**********************\n"
locVar=`find "/opt/Postman" -name "icon.png"`
cat > /tmp/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=$locVar
Terminal=false
Type=Application
Categories=Development;
EOL
sudo desktop-file-install --dir="/usr/share/applications" --delete-original /tmp/postman.desktop
echo "Done\n***********************\n"
