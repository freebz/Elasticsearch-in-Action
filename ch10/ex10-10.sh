# 예제 10.10 스캔 검색 사용하기

curl "localhost:9200/get-together/event/_search?pretty&q=elasticsearch\
&search_type=scan\
&scroll=1m\
&size=100"
# 응답
# {
#   "_scroll_id" : "c2NhbjsyOzcxNTpUZ0t1bmVZSVRONjNzZGoyNEZMRmR3OzcxNDpUZ0t1bmVZSVRONjNzZGoyNEZMRmR3OzE7dG90YWxfaGl0czowOw==",
#   [...]
#   "hits" : {
#     "total" : 7,
#     "max_score" : 0.0,
#     "hits" : [ ]
#   [...]

curl 'localhost:9200/_search/scroll?scroll=1m&pretty' -d 'c2NhbjsyOzcxNTpUZ0t1bmVZSVRONjNzZGoyNEZMRmR3OzcxNDpUZ0t1bmVZSVRONjNzZGoyNEZMRmR3OzE7dG90YWxfaGl0czowOw=='
# 응답
# {
#   "_scroll_id" : "c2NhbjswOzE7dG90YWxfaGl0czowOw==",
#   [...]
#   "hits" : {
#     "total" : 7,
#     "max_score" : 0.0,
#     "hits" : [ {
# 	"_index" : "get-together",

# [...]
curl 'localhost:9200/_search/scroll?scroll=1m&pretty' -d 'c2NhbjswOzE7dG90YWxfaGl0czowOw=='
