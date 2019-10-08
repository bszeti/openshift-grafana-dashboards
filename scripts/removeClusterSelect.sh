for filename in ../dashboards-with-cluster-select/*.json
do
  echo $filename
  sed 's/, *cluster=\\"$cluster\\"//g' $filename \
  | sed 's/cluster=\\"$cluster\\" *,//g' \
  | sed 's/cluster=\\"$cluster\\"//g'  \
  | jq 'del( .templating.list[]| select(.name == "cluster"))' \
  >../dashboards/$(basename $filename)
done