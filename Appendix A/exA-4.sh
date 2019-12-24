# 예제 A.4 geo shape 필터 예제

curl localhost:9200/geo/park/_search?pretty -d '{
  "query": {
    "filtered": {
      "filter": {
        "geo_shape": {
	  "area": {
	    "shape": {
	      "type": "polygon",
	      "coordinates": [
	        [[45, 30.5], [46, 30.5], [45, 31.5], [46, 32.5]]
	      ]
	    }
	  }
	}
      }
    }
  }
}'
