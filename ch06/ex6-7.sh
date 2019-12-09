# 예제 6.7 query_string 질의에서 개별 단어를 부스팅하기

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "query_string": {
      "query": "elasticsearch^3 AND \"big data\""
    }
  }
}'
