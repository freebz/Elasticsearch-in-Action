# 예제 4.10 범위, 페이지 매김, 필드, 정렬 순서의 4가지 요소를 이용한 쿼리

curl 'localhost:9200/get-together/group/_search' -d '{
  "query": {
    "match_all": {}
  },
  "from": 0,
  "size": 10,
  "_source": ["name", "organizer", "description"],
  "sort": [{"created_on": "desc"}]
}'
