# 예제 10.7 인기 있는 그룹 태그와 다가오는 이벤트에 대한 두 가지 워머

curl -XPUT 'localhost:9200/get-together/event/_warmer/upcoming_events' -d '{
  "sort": [
    {
      "date": {
        "order": "desc"
      }
    }
  ]
}'
# {"acknowledged":true}
curl -XPUT 'localhost:9200/get-together/group/_warmer/top_tags' -d '{
  "aggs": {
    "top_tags": {
      "terms": {
        "field": "tags.verbatim"
      }
    }
  }
}'
# {"acknowledged":true}
