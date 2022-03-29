source `dirname $0`/config.sh

execute() {
  $@ || exit
}

echo "1 in sh file $1"
echo $DEV_HUB_URLlocal
echo "2"
echo "3"
echo $SCRATCH_ORG_ALIAS
echo "4"

if [ -z $DEV_HUB_URLlocal ]; then
  echo "set default devhub user"
  execute sfdx force:config:set defaultdevhubusername=$DEV_HUB_ALIAS

  echo "deleting old scratch org"
  sfdx force:org:delete -p -u $SCRATCH_ORG_ALIAS
fi




# if [ -f "package.json" ]; then
#   echo "Running jest tests"
#   execute npm install
#   execute npm run test:unit
# fi
