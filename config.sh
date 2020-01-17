ZIP_NAME="" #name.zip
SSH_DIR=""

cd $SSH_DIR
find $SSH_DIR ! -name $ZIP_NAME -delete
unzip $ZIP_NAME
cp \!config/config.php ./
cp \!config/admin/config.php ./admin
rm -r $ZIP_NAME