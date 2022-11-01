#! /bin/bash

declare -A dev_emails=( 
  ["ehharvey"]="eharvey3704@conestogac.on.ca" 
  ["Amanuel-Negussie"]="Anegussie9077@conestogac.on.ca" 
  ["colefoster"]="Cfoster5841@conestogac.on.ca" 
  ["Justin200104"]="Jlangevin@conestogac.on.ca"
)


pip install -r requirements.txt

gh auth status

if [[ $? -ne 0 ]]
then
  echo "gh is not authenticated!"
  gh auth login
fi

username=$(gh api user | jq -r '.login')
email=${dev_emails[$username]}

git config user.name $username
git config user.email $email