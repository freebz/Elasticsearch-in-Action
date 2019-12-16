# 예제 9.13 타입의 매핑에 라우팅을 필수값으로 설정하기

curl -XPOST 'localhost:9200/routed-events' -d'
{
  "mappings": {
    "event": {
      "_routing": {
        "required": true
      },
      "properties": {
        "name": {
	  "type": "string"
	}
      }
    }
  }
}'
# {"acknowledged":true}

curl -XPOST 'localhost:9200/routed-events/event/1' -d'
{"name": "my event"}'
# {"error":"RoutingMissingException[routing is required for [routed-events]/[event]/[1]]","status":400}
