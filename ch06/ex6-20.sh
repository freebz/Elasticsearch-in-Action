# 예제 6.20 제목 필드에 데이터를 적재하기 위한 "eager" 설정

curl -XPOST 'localhost:9200/get-together' -d '{
  "mappings": {
    "group": {
      "properties": {
        "title": {
	  "type": "string",
	  "fileddata": {
	    "loading": "eager"
	  }
	}
      }
    }
  }
}'
