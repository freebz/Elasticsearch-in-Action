# 예제 6.18 모든 "function_score" 함수를 같이 사용

curl -XPOST 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "function_score": {
      "query": {
        "match_all": {}
      },
      "functions": [{
        "weight": 1.5,
	"filter": {
	  "term": {
	    "description": "hadoop"
	  }
	}
      }, {
        "field_value_factor": {
	  "field": "reviews",
	  "factor": 10.5,
	  "modifier": "log1p"
	}
      }, {
        "script_score": {
	  "script": "Math.log(doc['attendees'].values.size() * myweight)",
	  "params": {
	    "myweight": 3
	  }
	}
      }, {
        "gauss": {
	  "geolocation": {
	    "origin": "40.018528,-105.275806",
	    "offset": "100m",
	    "scale": "2km",
	    "decay": 0.5
	  }
	}
      }],
      "score_mode": "sum",
      "boost_mode": "replace"
    }
  }
}'
