# 예제 4.23 불린 값의 existence와 null_value 필드

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "filtered": {
      "query": {
        "match_all": {}
      },
      "filter": {
        "missing": {
	  "field": "reviews",
	  "existence": false,
	  "null_value": true
	}
      }
    }
  }
}'
