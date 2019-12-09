# 예제 6.5 multi_match 질의 전체에 부스트 지정하기

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "multi_match": {
      "query": "elasticsearch big data",
      "fields": ["name", "description"],
      "boost": 2.5
    }
  }
}'
