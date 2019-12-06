# 예제 4.9 date 오름차순, name 내림차순, _source에 의한 정렬한 결과

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "match_all": {}
  },
  "sort": [
    {"created_on": "asc"},
    {"name": "desc"},
    "_score"
  ]
}'
