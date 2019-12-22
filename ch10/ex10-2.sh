# 예제 10.2 자동 생성되는 ID를 사용하여 두 개의 문서를 같은 색인의 같은 타입에 색인하기

REQUESTS_FILE=/tmp/test_bulk
echo '{"index":{}}
{"name":"Elasticsearch Bucharest"}
{"index":{}}
{"name":"Big Data Bucharest"}
' > $REQUESTS_FILE
URL='localhost:9200/get-together/group'
curl -XPOST $URL/_bulk?pretty --data-binary @$REQUESTS_FILE
