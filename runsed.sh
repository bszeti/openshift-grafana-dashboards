sudo sh -c $'sed \'s/{% filter_by_cluster %}/cluster=\\\\"$Cluster\\\\"/g\' summary-by-node.json >summary-by-node.out.json'
