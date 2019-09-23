# Aggregated dashboards - with cluster selection
sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-node.json.j2 | sed 's/{% filter_by_cluster %}/cluster=\\"$Cluster\\"/g' >summary-by-node-aggregated.json
sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-nodetype.json.j2 | sed 's/{% filter_by_cluster %}/cluster=\\"$Cluster\\"/g' >summary-by-nodetype-aggregated.json

# Cluster dasboards - no cluster selection
sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-node.json.j2 | sed 's/{% filter_by_cluster %}//g' >summary-by-node.json
sed 's/${DS_PROMETHEUS}/prometheus/g' summary-by-nodetype.json.j2 | sed 's/{% filter_by_cluster %}//g' >summary-by-nodetype.json
