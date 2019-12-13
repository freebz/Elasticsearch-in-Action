# 예제 8.1 내부 JSON 개체는 개체 타입처럼 매핑한다

curl -XPUT 'localhost:9200/get-together/event-object/1' -d '{
  "title": "Introduction to objects",
  "location": {
    "name": "Elasticsearch in Action book",
    "address": "chapter 8"
  }
}'

curl 'localhost:9200/get-together/_mapping/event-object?pretty'

#  expected reply:
# {
#   "get-together" : {
#     "mappings" : {
#       "event-object" : {
#         "properties" : {
#           "location" : {
#             "properties" : {
#               "address" : {
#                 "type" : "string"
#               },
#               "name" : {
#                 "type" : "string"
#               }
#             }
#           },
#           "title" : {
#             "type" : "string"
#           }
#         }
#       }
#     }
#   }
# }
