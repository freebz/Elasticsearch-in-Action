# 예제 A.2 점수를 계산할 때 거리 고려하기

curl 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match": {
	  "title": "elasticsearch"
	}
      },
      "linear": {
        "location.geolocation": {
	  "origin": "40, -105",
	  "scale": "100km",
	  "decay": 0.5
	}
      }
    }
  }
}'
