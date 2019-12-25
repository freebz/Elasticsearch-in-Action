# 예제 C.8 포스팅 하이라이터 사용하기

INDEX_URL="localhost:9200/test-postings"
curl -XDELETE $INDEX_URL
curl -XPUT $INDEX_URL -d '{
  "mappings": {
    "docs": {
      "properties": {
        "content": {
	  "type": "string",
	  "index_options": "offsets"
	}
      }
    }
  }
}'
curl -XPUT $INDEX_URL/docs/1 -d '{
  "content": "Postings Highlighter rocks. It stores offsets in postings."
}'
curl -XPUT $INDEX_URL/docs/2 -d '{
  "content": "Postings are a generic name for the inverted part of the index: term dictionary, term frequencies, term positions."
}'
curl -XPOST $INDEX_URL/_refresh
curl "$INDEX_URL/_search?q=content:postings&pretty" -d '{
  "highlight": {
    "fields": {
      "content": {}
    }
  }
}'
# 응답
#       "highlight" : {
#         "content" : [ "<em>Postings</em> Highlighter rocks.", "It stores offsets in <em>postings</em>." ]
#       }
# [...]
#       "highlight" : {
#         "content" : [ "<em>Postings</em> are a generic name for the inverted part of the index: term dictionary, term frequencies, term positions." ]
#       }
