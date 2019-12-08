# 예제 5.4 반전 토큰 필터 예

curl 'localhost:9200/_analyze?tokenizer=standard&filters=reverse' \
     -d 'Reverse token filter'

# {
#   "tokens" : [ {
#     "token" : "esreveR",
#     "start_offset" : 0,
#     "end_offset" : 7,
#     "type" : "<ALPHANUM>",
#     "position" : 1
#   }, {
#     "token" : "nekot",
#     "start_offset" : 8,
#     "end_offset" : 13,
#     "type" : "<ALPHANUM>",
#     "position" : 2
#   }, {
#     "token" : "retlif",
#     "start_offset" : 14,
#     "end_offset" : 20,
#     "type" : "<ALPHANUM>",
#     "position" : 3
#   } ]
# }
