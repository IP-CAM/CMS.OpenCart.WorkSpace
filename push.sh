ZIP_NAME="" #name.zip
SSH_USER=""
SSH_HOST=""
SSH_DIR=""

zip -r $ZIP_NAME *
scp $ZIP_NAME "$SSH_USER@$SSH_HOST:$SSH_DIR"
rm -r $ZIP_NAME

ssh "$SSH_USER@$SSH_HOST" 'bash -s' < config.sh
