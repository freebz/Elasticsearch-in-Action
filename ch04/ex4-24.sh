# 예제 4.24 캐시 쿼리 필터

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "filtered": {
      "query": {
        "match_all": {}
      },
      "filter": {
        "fquery": {
	  "query": {
	    "query_string": {
	      "query": "name:\"denver clojure\""
	    }
	  },
	  "_cache": true
	}
      }
    }
  }
}'
