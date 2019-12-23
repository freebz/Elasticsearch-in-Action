# 예제 11.3 클러스터 상태 API 요청

curl -XGET 'localhost:9200/_cluster/health?pretty';

# {
#   "cluster_name" : "elasticsearch",
#   "status" : "green",
#   "timed_out" : false,
#   "number_of_nodes" : 2,
#   "number_of_data_nodes" : 2,
#   "active_primary_shards" : 78,
#   "active_shards" : 155,
#   "relocating_shards" : 0,
#   "initializing_shards" : 0,
#   "unassigned_shards" : 0
# }
