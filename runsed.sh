#sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-node.json.j2 | sudo sh -c $'sed \'s/{% filter_by_cluster %}/cluster=\\\\"$Cluster\\\\"/g\' >summary-by-node.json'
sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-node.json.j2 | sed 's/{% filter_by_cluster %}/cluster=\\"$Cluster\\"/g' >summary-by-node.json
#sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-nodetype.json.j2 | sudo sh -c $'sed \'s/{% filter_by_cluster %}/cluster=\\\\"$Cluster\\\\"/g\' summary-by-nodetype.json.j2 >summary-by-nodetype.json'
sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-nodetype.json.j2 | sed 's/{% filter_by_cluster %}/cluster=\\"$Cluster\\"/g' >summary-by-nodetype.json
