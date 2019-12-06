# 예제 4.21 bool 필터로 필터 결합하기

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "filtered": {
      "query": {
        "match_all": {}
      },
      "filter": {
        "bool": {
	  "must": [
	    {
	      "term": {
	        "attendees": "david"
	      }
	    }
	  ],
	  "should": [
	    {
	      "term": {
	        "attendees": "clint"
	      }
	    },
	    {
	      "term": {
	        "attendees": "andy"
	      }
	    }
	  ],
	  "must_not": [
	    {
	      "range": {
	        "date": {
		  "lt": "2013-06-30T00:00"
		}
	      }
	    }
	  ]
	}
      }
    }
  }
}'
