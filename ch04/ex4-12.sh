# 예제 4.12 요청 본문을 이용해서 기본 검색 요청

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "match_all": {}
  }
}'
