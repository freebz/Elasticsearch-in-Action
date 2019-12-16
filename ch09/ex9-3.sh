# 예제 9.3 클러스터에서 노드를 해체하기

curl -XPUT localhost:9200/_cluster/settings -d '{
  "transient": {
    "cluster.routing.allocation.exclude._ip": "192.168.1.10"
  }
}'
