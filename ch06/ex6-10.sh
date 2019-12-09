# 예제 6.10 검색된 문서의 하부 점수를 재점수 계산

curl -XPOST 'localhost:9200/get-together/_search?pretty' -d '{
  "query": {
    "match": {
      "title": "elasticsearch"
    }
  },
  "rescore": {
    "window_size": 20,
    "query": {
      "rescore_query": {
        "match": {
	  "title": {
	    "type": "phrase",
	    "query": "elasticsearch hadoop",
	    "slop": 5
	  }
	}
      },
      "query_weight": 0.8,
      "rescore_query_weight": 1.3
    }
  }
}'
