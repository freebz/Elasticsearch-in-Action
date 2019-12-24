# 예제 A.1 거리로 이벤트 정렬하기

curl 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "match": {
      "title": "elasticsearch"
    }
  }, "sort" : [
    {
      "_geo_distance" : {
        "location.geolocation" : "40,-105",
	"order" : "asc",
	"unit" : "km"
      }
  } ]
}'
