# 예제 E.1 중첩된 참석자 이름에 퍼컬레이터 사용하기

curl -XPUT 'localhost:9200/get-together/_mapping/nested-events' -d '{
  "properties": {
    "title": { "type": "string" },
    "attendee-name": {
      "type": "nested",
      "properties": {
        "first": { "type": "string" },
	"last": { "type": "string" }
      }
    }
  }
}'
curl -XPUT 'localhost:9200/get-together/.percolator/1' -d '{
  "query": {
    "nested": { "path": "attendee-name",
      "query": {
        "bool": {
	  "must": [
	    { "match": {
	      "attendee-name.first": "Lee"
	    }},
	    { "match": {
	      "attendee-name.last": "Hinman"
	    }}
	  ]
	}
      }
    }
  }
}'
curl 'localhost:9200/get-together/nested-events/_percolate?pretty' -d '{
  "doc": {
    "title": "Percolator works with nested documents",
    "attendee-name": [
      { "first": "Lee", "last": "Hinman" },
      { "first": "Radu", "last": "Gheorghe" },
      { "first": "Roy", "last": "Russo" }
    ]
  }
}'
