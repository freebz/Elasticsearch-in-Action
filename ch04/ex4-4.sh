# 예제 4.4 _source로 응답에서 원하는 필드를 제한

curl 'localhost:9200/get-together/_search?sort=date:asc&_source=title,date'
# {
#   "_index": "get-together",
#   "_type": "event",
#   "_id": "114",
#   "_score": null,
#   "_source": {
#     "date": "2013-09-09T18:30",
#     "title": "Using Hadoop with Elasticsearch"
#   },
#   "sort": [
#     1378751400000
#   ]
# },
