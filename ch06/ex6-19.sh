# 예제 6.19 스크립트를 이용한 문서 정렬

curl -XPOST 'localhost:9200/get-together/event/_search?pretty' -d '{
  "query": {
    "match": {
      "description": "elasticsearch"
    }
  },
  "sort": [{
      "_script": {
        "script": "doc['attendees'].values.size()",
	"type": "number",
	"order": "desc"
      }
    },
    "_score"
  ]
}'
