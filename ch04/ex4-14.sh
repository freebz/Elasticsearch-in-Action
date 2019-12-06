# 예제 4.14 필터를 사용한 쿼리

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "filtered": {
      "query": {
        "match": {
     	  "title": "hadoop"
	}
      },
      "filter": {
        "term": {
	  "host": "andy"
	}
      }
    }
  }
}'
