# 예제 5.2 색인 생성 동안 사용자 지정 분석기 추가

curl -XPOST 'localhost:9200/myindex' -d '{
  "settings": {
    "number_of_shards": 2,
    "number_of_replicas": 1,
    "index": {
      "analysis": {
        "analyzer": {
	  "myCustomAnalyzer": {
	    "type": "custom",
	    "tokenizer": "myCustomTokenizer",
	    "filter": ["myCustomFilter1", "myCustomFilter2"],
	    "char_filter": ["yCustomCharFilter"]
	  }
	},
	"tokenizer": {
	  "myCustomTokenizer": {
	    "type": "letter"
	  }
	},
	"filter": {
	  "myCustomFilter1": {
	    "type": "lowercase"
	  },
	  "myCustomFilter2": {
	    "type": "kstem"
	  }
	},
	"char_filter": {
	  "myCustomCharFilter": {
	    "type": "mapping",
	    "mappings": ["ph=>f", "u=>you"]
	  }
	}
      }
    }
  },
  "mappings": {
  ...
  }
}'
