gh auth status

status=$?

if [[ $status -ne 0 ]]
then
  echo "gh is not authenticated!"
  gh auth login
fi

pip install -r requirements.txt

status=$?

exit $status