# 예제 4.13 match 쿼리

curl 'localhost:9200/get-together/event/_search' -d '{
  "query": {
    "match": {
      "title": "hadoop"
    }
  }
}'
