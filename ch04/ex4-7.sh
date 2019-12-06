# 예제 4.7 _source의 필터링

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "match_all": {}
  },
  "_source": ["name", "date"]
}'
