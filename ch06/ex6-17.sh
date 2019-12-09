# 예제 6.17 "Gaussuan decay"를 사용한 지리 정보 위치

curl -XPOST 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match_all": {}
      },
      "functions": [{
        "gauss": {
	  "location_event.geolocation": {
	    "origin": "40.018528,-105.275806",
	    "offset": "100m",
	    "scale": "2km",
	    "decay": 0.5
	  }
	}
      }]
    }
  }
}'
