# 예제 4.20 bool 쿼리로 쿼리 결합

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
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
      ],
      "minimum_should_match": 1
    }
  }
}'

# {
#   "took" : 3,
#   "timed_out" : false,
#   "_shards" : {
#     "total" : 2,
#     "successful" : 2,
#     "failed" : 0
#   },
#   "hits" : {
#     "total" : 1,
#     "max_score" : 0.56109595,
#     "hits" : [ {
#       "_index" : "get-together",
#       "_type" : "event",
#       "_id" : "110",
#       "_score" : 0.56109595,
#       "_source":{
#   "host": "Andy",
#   "title": "Big Data and the cloud at Microsoft",
#   "description": "Discussion about the Microsoft Azure cloud and HDInsight.",
#   "attendees": ["Andy", "Michael", "Ben", "David"],
#   "date": "2013-07-31T18:00",
#   "location_event": {
#     "name": "Bing Boulder office",
#     "geolocation": "40.018528,-105.275806"
#   },
#   "reviews": 1
# }
#     } ]
#   }
# }
