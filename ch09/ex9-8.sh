# 예제 9.8 특정 색인을 가리키고 있는 모든 앨리어스 조회하기

curl 'localhost:9200/get-together/_alias?pretty'
# {
#   "get-together" : {
#     "aliases" : {
#       "gt-alias" : { }
#     }
#   }
# }
