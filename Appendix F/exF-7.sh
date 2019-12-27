# 예제 F.7 기존 데이터에 기반을 둔 간단한 자동완성

curl -XPUT 'localhost:9200/places' -d '{
  "mappings": {
    "food": {
      "properties": {
        "name": {
	  "type": "string",
	  "fields": {
	    "suggest": {
	      "type": "completion"
	    }
	  }
	}
      }
    }
  }
}'
curl -XPUT 'localhost:9200/places/food/1' -d '{
  "name": "Pizza Hut"
}'
curl 'localhost:9200/places/_suggest?pretty' -d '{
  "name-autocomplete": {
    "text": "p",
    "completion": {
      "field": "name.suggest"
    }
  }
}'
# 응답
#   "name-autocomplete" : [ {
#     "text" : "p",
#     "offset" : 0,
#     "length" : 1,
#     "options" : [ {
#       "text" : "Pizza Hut",
#       "score" : 1.0
#     } ]
