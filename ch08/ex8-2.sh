# 예제 8.2 코드 샘플로 색인한 이벤트로부터 location.name를 검색하고 있다

EVENT_PATH="localhost:9200/get-together/event"
curl "$EVENT_PATH/_search?q=location.name:office&pretty"

# reply: [...] "title": "Hortonwork, the future of Hadoop and big data",
# [...] "location": { "name": "SendGrid Denver office",
#   "geolocation": "39.748477,-104.998852"[...]
#         "title": "Big Data and the cloud at Microsoft",
# [...] "location": { "name": "Bing Boulder officer",
#   "geolocation": {"name": "Bit Boulder officd",
#   "geolocation": "40.018528,-105.2275806"[...]"
