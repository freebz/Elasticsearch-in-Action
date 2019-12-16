# 예제 9.2 curl로 클러스터의 노드들에 관한 정보 조회하기

curl 'http://localhost:9200/_cluster/state/master_node,nodes?pretty'
{
#   "cluster_name" : "elasticsearch",
#   "master_node" : "TgKuneYITN63sdj24FLFdw",
#   "nodes" : {
#     "TgKuneYITN63sdj24FLFdw" : {
#       "name" : "Mister X",
#       "transport_address" : "inet[/192.168.0.15:9300]",
#       "attributes" : { }
#     },
#     "cZZDwONWSpSCGiypia2ZAw" : {
#       "name" : "Zombie",
#       "transport_address" : "inet[/192.168.0.15:9301]",
#       "attributes" : { }
#     }
#   }
# }
