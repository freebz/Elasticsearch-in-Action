# 예제 4.22 와일드카드 쿼리 예제

curl -XPOST 'localhost:9200/wildcard-test/doc/1' -d '
{"title":"The Best Bacon Ever"}'

curl -XPOST 'localhost:9200/wildcard-test/doc/2' -d '
{"title":"How to raise a barn"}'

curl 'localhost:9200/wildcard-test/_search' -d'{
  "query": {
    "wildcard": {
      "title": {
        "wildcard": "ba*n"
      }
    }
  }
}'

# {
#   ...
#     "hits" : [
#       {
# 	"_index" : "wildcard-test",
# 	"_type" : "doc",
# 	"_id" : "1",
# 	"_score" : 1.0,
# 	"_source": {
# 	  "title":"The Best Bacon Ever"
# 	}
#       },
#       {
#         "_index" : "wildcard-test",
# 	"_type" : "doc",
# 	"_id" : "2",
# 	"_score" : 1.0,
# 	"_source": {
# 	  "title":"How to raise a barn"
# 	}
#       }
#     ]
#   ...
# }

curl 'localhost:9200/wildcard-test/_search' -d '{
  "query": {
    "wildcard": {
      "title": {
        "wildcard": "ba?n"
      }
    }
  }
}'

# {
#   ...
#     "hits" : [
#       {
#         "_index" : "wildcard-test",
# 	"_type" : "doc",
# 	"_id" : "2",
# 	"_score" : 1.0,
# 	"_source": {
# 	  "title":"How to raise a barn"
# 	}
#       }
#     ]
#   ...
# }
