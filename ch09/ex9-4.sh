# 예제 9.4 클러스터 상태에서 샤드의 위치를 확인하기

curl -s 'localhost:9200/_nodes?pretty'
# {
#   "cluster_name" : "elasticsearch",
#   "nodes" : {
#     "TgKuneYITN63sdj24FLFdw" : {
#       "name" : "Mister X",
#       "transport_address" : "inet[/192.168.0.15:9300]",
#       "host" : "ubuntu-16",
#       "ip" : "127.0.1.1",
#       "version" : "1.4.0",
#       "build" : "bc94bd8",
#       "http_address" : "inet[/192.168.0.15:9200]",
#     },
#     "cZZDwONWSpSCGiypia2ZAw" : {
#       "name" : "Zombie",
#       "transport_address" : "inet[/192.168.0.15:9301]",
#       "host" : "ubuntu-16",
#       "ip" : "127.0.1.1",
#       "version" : "1.4.0",
#       "build" : "bc94bd8",
#       "http_address" : "inet[/192.168.0.15:9201]",
#     }
#   }
# }

curl 'localhost:9200/_cluster/state/routing_table,routing_nodes?pretty'
# {
#   "cluster_name" : "elasticsearch",
#   "routing_table" : {
#     "indices" : {
#       "test": {
# 	"shards": {
# 	  ...
# 	}
#       }
#     }
#   },
#   "routing_nodes" : {
#     "unassigned" : [ ],
#     "nodes" : {
#       "TgKuneYITN63sdj24FLFdw" : [ {
#         "state" : "STARTED",
#         "primary" : true,
#         "node" : "TgKuneYITN63sdj24FLFdw",
#         "relocating_node" : null,
#         "shard" : 4,
#         "index" : "wildcard-test"
#       }, {
#         "state" : "STARTED",
#         "primary" : true,
#         "node" : "TgKuneYITN63sdj24FLFdw",
#         "relocating_node" : null,
#         "shard" : 0,
#         "index" : "wildcard-test"
#       }, {
#         "state" : "STARTED",
#         "primary" : true,
#         "node" : "TgKuneYITN63sdj24FLFdw",
#         "relocating_node" : null,
#         "shard" : 3,
#         "index" : "wildcard-test"
#       }, {
#         "state" : "STARTED",
#         "primary" : false,
#         "node" : "cZZDwONWSpSCGiypia2ZAw",
#         "relocating_node" : null,
#         "shard" : 1,
#         "index" : "logs"
#       }, {
#         "state" : "STARTED",
#         "primary" : false,
#         "node" : "cZZDwONWSpSCGiypia2ZAw",
#         "relocating_node" : null,
#         "shard" : 4,
#         "index" : "logs"
#       } ]
#     }
#   },
#   "allocations" : [ ]
# }
