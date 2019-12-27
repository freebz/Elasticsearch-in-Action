# 예제 F.6 어떤 제안들이 결과를 반환하는지 보기 위해 collate 사용하기

curl localhost:9200/shop/_suggest?pretty -d '{
  "dym-description": {
    "text": "ifone accesorie",
    "phrase": {
      "field": "product",
      "max_errors": 2,
      "collate": {
        "query": {
	  "match": {
	    "{{field_name}}": {
	      "query": "{{suggestion{{",
	      "operator": "AND"
	    }
	  }
	},
	"params": {
	  "field_name": "product"
	}
      }
    }
  }
}'
# 응답 스니펫
#     "options" : [ {
#       "text" : "iphone accessories",
#       "score" : 0.44569767
#     } ]
