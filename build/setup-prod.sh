# Get the private key from the environment variable
echo "Setting up Production Connection..."
mkdir keys
echo $CERT_KEY | base64 -d > keys/server.key

# Authenticate to salesforce
echo "Authenticating..."
sfdx force:auth:jwt:grant --clientid $CLIENT_ID --jwtkeyfile keys/server.key --username $USERNAME --setdefaultdevhubusername -a DevHub