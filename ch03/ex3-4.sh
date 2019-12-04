# 예제 3.4 문자열을 위한 다중 필드: 한 번은 analyzed, 다른 한 번은 not_analyzed를 사용

curl -XPUT 'localhost:9200/blog/_mapping/posts' -d '{
  "posts": {
    "properties": {
      "tags": {
        "type": "string",
	"index": "analyzed",
	"fields": {
	  "verbatim": {
	    "type": "string",
	    "index": "not_analyzed"
	  }
	}
      }
    }
  }
}'
