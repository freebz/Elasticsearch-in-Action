# 예제 3.3 기본 및 사용자 날짜 형식 사용하기

curl -XPUT 'localhost:9200/get-together/_mapping/weekly-events' -d '{
  "weekly-events": {
    "properties": {
      "next_event": {
        "type": "date",
	"format": "MMM DD YYYY"
      }
    }
  }
}'

curl -XPUT 'localhost:9200/get-together/weekly-events/1' -d '{
  "name": "Elasticsearch News",
  "first_occurence": "2011-04-03",
  "next_event": "Oct 25 2013"
}'
