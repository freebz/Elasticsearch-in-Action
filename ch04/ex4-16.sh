# 예제 4.16 query_string 검색으로 default_field 지정

curl -XPOST 'localhost:9200/_search' -d '{
  "query" : {
    "query_string": {
      "default_field" : "description",
      "query" : "nosql"
    }
  }
}'
