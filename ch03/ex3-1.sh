# 예제 3.1 자동으로 생성한 매핑 가져오기

curl -XPUT 'localhost:9200/get-together/new-events/1' -d '{
  "name": "Late Night with Elasticsearch",
  "date": "2013-10-25T19:00"
}'

curl 'localhost:9200/get-together/_mapping/new-events?pretty'
# {
#  "get-together": {
#    "mappings": {
#      "new-events": {
#        "properties": {
# 	 "date": {
# 	   "type": "date",
# 	   "format": "dateOptionalTime"
# 	 },
# 	 "name": {
# 	   "type": "string"
# 	 }
#        }
#      }
#    }
#  }
# }
