# 예제 A.3 모양 색인하기

curl -XPUT localhost:9200/geo
curl -XPUT localhost:9200/geo/_mapping/park -d '{
  "properties": {
    "area": { "type": "geo_shape"}
  }
}'
curl -XPUT localhost:9200/geo/park/1 -d '{
  "area": {
    "type": "polygon",
    "coordinates": [
      [[45, 30], [46, 30], [45, 31], [46, 32]]
    ]
  }
}'
