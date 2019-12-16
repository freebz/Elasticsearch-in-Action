# 예제 9.1 두 개의 노드로 구성된 클러스터의 상태 확인하기

curl -XGET 'http://localhost:9200/_cluster/health?pretty'
# {
#   "cluster_name" : "elasticsearch",
#   "status" : "green",
#   "timed_out" : false,
#   "number_of_nodes" : 2,
#   "number_of_data_nodes" : 2,
#   "active_primary_shards" : 5,
#   "active_shards" : 10,
#   "relocating_shards" : 0,
#   "initializing_shards" : 0,
#   "unassigned_shards" : 0
# }
