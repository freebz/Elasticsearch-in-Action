# 예제 11.1 여러 개의 템플릿을 설정하기

curl -XPUT localhost:9200/_template/logging_index_all -d '{
  "template": "logstash-09-*",
  "order": 1,
  "settings": {
    "number_of_shards": 2,
    "number_of_replicas": 1
  },
  "mappings": {
    "date": {
      "store": false
    }
  },
  "alias": {
    "november": {}
  }
}'
curl -XPUT http://localhost:9200/_template/logging_index -d '{
  "template": "logstash-*",
  "order": 0,
  "settings": {
    "number_of_shards": 2,
    "number_of_replicas": 1
  },
  "mappings": {
    "date": {
      "store": true
    }
  }
}'
