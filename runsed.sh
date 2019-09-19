sudo sh -c $'sed \'s/{% filter_by_cluster %}/cluster=\\\\"$Cluster\\\\"/g\' summary-by-node.json.j2 >summary-by-node.json'
sudo sh -c $'sed \'s/{% filter_by_cluster %}/cluster=\\\\"$Cluster\\\\"/g\' summary-by-nodetype.json.j2 >summary-by-node.json'
