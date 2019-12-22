# 예제 10.1 하나의 벌크로 두 개의 문서 색인하기

REQUESTS_FILE=/tmp/test_bulk
echo '{"index":{"_index":"get-together", "_type":"group", "_id":"10"}}
{"name":"Elasticsearch Bucharest"}
{"index":{"_index":"get-together", "_type":"group", "_id":"11"}}
{"name":"Big Data Bucharest"}
' > $REQUESTS_FILE
curl -XPOST localhost:9200/_bulk --data-binary @$REQUESTS_FILE
