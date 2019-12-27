# 예제 F.2 텀에 대한 가장 인기 있는 제안 얻기

curl localhost:9200/get-together/_suggest?pretty -d '{
  "dym-attendees": {
    "text": "mick",
    "term": {
      "field": "attendees",
      "size": 1,
      "sort": "frequency",
      "suggest_mode": "popular"
    }
  }
}'
