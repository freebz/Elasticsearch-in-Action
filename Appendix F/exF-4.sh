# 예제 F.4 두 개의 생성기 중 하나에 역 토큰 필터 사용하기

curl -XPUT localhost:9200/shop -d '{
  "settings": {
    "analysis": {
      "filter": {
        "reversing": { "type": "reverse" }
      },
      "analyzer": {
        "standard_reverse": {
	  "type": "custom",
	  "tokenizer": "standard",
	  "filter": ["lowercase", "reverse"]
	}
      }
    }
  },
  "mappings": {
    "products": {
      "properties": {
        "product": {
	  "type": "string",
	  "fields": {
	    "reversed": {
	      "type": "string",
	      "analyzer": "standard_reverse"
	    }
	  }
	}
      }
    }
  }
}'
curl -XPUT localhost:9200/shop/products/1 -d '{
  "product": "iphone accessories"
}'
curl -XPOST localhost:9200/shop/_suggest?pretty -d '{
  "dym": {
    "text": "ifone accesorie",
    "phrase": {
      "field": "product",
      "max_errors": 2,
      "direct_generator": [
        {
	  "field": "product",
	  "prefix_length": 3
	},
	{
	  "field": "product.reversed",
	  "prefix_length": 3,
	  "pre_filter": "standard_reverse",
	  "post_filter": "standard_reverse"
	}
      ]
    }
  }
}'
# 응답 스니펫
#   "text" : "iphone accessories",
#       "score" : 0.48023444
#   "text" : "iphone accesorie",
#       "score" : 0.38765374
#   "text" : "ifone accessories",
#       "score" : 0.35540017
