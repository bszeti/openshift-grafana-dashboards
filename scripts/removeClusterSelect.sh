for filename in ../dashboards-with-cluster-select/*.json
do
  echo $filename
  sed 's/, *cluster=\\"$cluster\\"//g' $filename | sed 's/cluster=\\"$cluster\\" *,//g' | sed 's/cluster=\\"$cluster\\"//g' >../dashboards/$(basename $filename)
done
