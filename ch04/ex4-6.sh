# 예제 4.6 from과 size를 사용하는 페이지 매김 결과

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "match_all": {}
  },
  "from": 10,
  "size": 10
}'
