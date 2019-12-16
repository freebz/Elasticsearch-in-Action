# 예제 9.5 _cat API를 사용해서 클러스터의 상태와 노드들을 확인하기

curl -XGET 'localhost:9200/_cluster/health?pretty'
# {
#   "cluster_name" : "elasticsearch",
#   "status" : "green",
#   "timed_out" : false,
#   "number_of_nodes" : 2,
#   "number_of_data_nodes" : 2,
#   "active_primary_shards" : 53,
#   "active_shards" : 105,
#   "relocating_shards" : 0,
#   "initializing_shards" : 0,
#   "unassigned_shards" : 0
# }

curl -XGET 'localhost:9200/_cat/health?v'
# epoch      timestamp cluster       status node.total node.data shards pri relo init unassign 
# 1576424167 00:36:07  elasticsearch green           2         2    105  53    0    0        0 

curl -XGET 'localhost:9200/_cluster/state/master_node,nodes&pretty'
# {
#   "cluster_name":"elasticsearch",
#   "master_node":"TgKuneYITN63sdj24FLFdw"
# }

curl -XGET 'localhost:9200/_cat/nodes?v'
# host      ip        heap.percent ram.percent load node.role master name     
# ubuntu-16 127.0.1.1            7          70 1.51 d         *      Mister X 
# ubuntu-16 127.0.1.1            9          70 1.38 d         m      Zombie
