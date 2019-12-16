# 예제 9.12 라우팅과 함께, 혹은 라우팅 없이 _search_shards API를 사용하기

curl -XGET 'localhost:9200/get-together/_search_shards?pretty'
# {
#   "nodes" : {
#     "TgKuneYITN63sdj24FLFdw" : {
#       "name" : "Mister X",
#       "transport_address" : "inet[/192.168.0.15:9300]"
#     },
#     "cZZDwONWSpSCGiypia2ZAw" : {
#       "name" : "Zombie",
#       "transport_address" : "inet[/192.168.0.15:9301]"
#     }
#   },
#   "shards" : [ [ {
#     "state" : "STARTED",
#     "primary" : true,
#     "node" : "TgKuneYITN63sdj24FLFdw",
#     "relocating_node" : null,
#     "shard" : 0,
#     "index" : "get-together"
#   }, {
#     "state" : "STARTED",
#     "primary" : false,
#     "node" : "cZZDwONWSpSCGiypia2ZAw",
#     "relocating_node" : null,
#     "shard" : 0,
#     "index" : "get-together"
#   } ], [ {
#     "state" : "STARTED",
#     "primary" : false,
#     "node" : "cZZDwONWSpSCGiypia2ZAw",
#     "relocating_node" : null,
#     "shard" : 1,
#     "index" : "get-together"
#   }, {
#     "state" : "STARTED",
#     "primary" : true,
#     "node" : "TgKuneYITN63sdj24FLFdw",
#     "relocating_node" : null,
#     "shard" : 1,
#     "index" : "get-together"
#   } ] ]
# }

curl -XGET 'localhost:9200/get-together/_search_shards?pretty&routing=denver'
# {
#   "nodes" : {
#     "TgKuneYITN63sdj24FLFdw" : {
#       "name" : "Mister X",
#       "transport_address" : "inet[/192.168.0.15:9300]"
#     },
#     "cZZDwONWSpSCGiypia2ZAw" : {
#       "name" : "Zombie",
#       "transport_address" : "inet[/192.168.0.15:9301]"
#     }
#   },
#   "shards" : [ [ {
#     "state" : "STARTED",
#     "primary" : false,
#     "node" : "cZZDwONWSpSCGiypia2ZAw",
#     "relocating_node" : null,
#     "shard" : 1,
#     "index" : "get-together"
#   }, {
#     "state" : "STARTED",
#     "primary" : true,
#     "node" : "TgKuneYITN63sdj24FLFdw",
#     "relocating_node" : null,
#     "shard" : 1,
#     "index" : "get-together"
#   } ] ]
# }
