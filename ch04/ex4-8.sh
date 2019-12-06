# 예제 4.8 include와 exclude로 반환하는 _source 필터링

curl 'localhost:9200/get-together/_search' -d '{
  "query": {
    "match_all": {}
  },
  "_source": {
    "include": ["location.*", "date"],
    "exclude": ["location.geolocation"]
  }
}'
