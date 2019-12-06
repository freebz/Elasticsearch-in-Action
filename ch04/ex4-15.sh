# 예제 4.15 query_string 검색 예제

curl -XGET 'localhost:9200/get-together/_search?q=nosql&pretty'

curl -XPOST 'http://localhost:9200/get-together/_search?pretty' -d '{
  "query" : {
    "query_string": {
      "query": "nosql"
    }
  }
}'
