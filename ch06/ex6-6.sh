# 예제 6.6 이름 필드에만 부스팅

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "multi_match": {
      "query": "elasticsearch big data",
      "fields": ["name^3", "description"]
    }
  }
}'
