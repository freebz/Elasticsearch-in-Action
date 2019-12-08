# 예제 5.1 주와 레플리카 샤드 개수 설정

curl -XPOST 'localhost:9200/myindex' -d '{
  "settings": {
    "number_of_shards": 2,
    "number_of_replicas": 1
  },
  "mappings": {
  ...
  }
}'
