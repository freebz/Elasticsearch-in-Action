# 예제 9.9 필터를 적용한 앨리어스 생성하기

curl -XPOST 'localhost:9200/_aliases' -d'
{
  "actions": [
    {
      "add": {
        "index": "get-together",
	"alias": "es-groups",
	"filter": {
	  "term": {
	    "tags": "elasticsearch"
	  }
	}
      }
    }
  ]
}'
# {"acknowledged":true}

curl 'localhost:9200/get-together/group/_count' -d'
{
  "query": {
    "match_all": {}
  }
}'
# {"count":5,"_shards":{"total":2,"successful":2,"failed":0}}


curl 'localhost:9200/es-groups/group/_count' -d'
{
  "query": {
    "match_all": {}
  }
}'
# {"count":2,"_shards":{"total":2,"successful":2,"failed":0}}
