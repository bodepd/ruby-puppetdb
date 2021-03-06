# query for all nodes that have the package mysql-server applied to them
#$nodes = query_nodes('Package[mysql-server]')
# query for all nodes that have the package my-server applied and that have the architecture of amd64
#$nodes = query_nodes('Package[mysql-server] and architecture=amd64')
# return the fqdn fact for each node instead of the node_name
# munge to be unique if you dont want duplciates to cause failures
#$nodes = unique(query_nodes('Package[mysql-server] and architecture=amd64', 'fqdn'))

# use query_active_nodes to just return the nodes that are active
$nodes = unique(query_active_nodes('Package[mysql-server] and architecture=amd64', 'fqdn'))

notify { $nodes: }
