# 예제 B.6 일래스틱서치 서비스에서 플러그인을 필수로 만들기

bin/elasticsearch
# [INFO] [                    ] [Carrion] version[1.5.1], pid[46463],
#   build[5e38401/2015-04-09T13:41:35Z]
# [INFO] [node                ] [Carrion] initializing ...
# {1.5.1]: Initialization Failed ...
# - ElasticsearchException[Missing mandatory plugins [analysis-icu, head]]


bin/plug --install mobz/elasticsearch-head
# -> Installing mobz/elasticsearch-head...
# Trying https://github.com/mobz/elasticsearch-head/archive/master.zip...
# Downloading ..........................DONE
# Installed mobz/elasticsearch-head into /Users/hinmanm/ies/elasticsearch-
#   1.5.1/plugins/head
# Identified as a _site plugin, moving to _site structure ...


bin/plugin --install elasticsearch/elasticsearch-analysis-icu/2.5.0
# -> Installing elasticsearch/elasticsearch-analysis-icu/2.5.0...
# Trying http://download.elasticsearch.org/elasticsearch/elasticsearch-
#   analysis-icu/elasticsearch-analysis-icu-2.5.0.zip...
# Downloading .......................................DONE
# Installed elasticsearch/elasticsearch-analysis-icu/2.5.0 into /Users/
# hinmanm/
#   ies/elasticsearh-1.5.1/plugins/analysis-icu


bin/elasticsearch
# [INFO] [                    ] [Carrion] version[1.5.1], pid[46698],
#   build[5e38401/2015-04-09T13:41:35Z]
# [INFO ][node                ] [Black Widow] initializing ...
# [INFO ][plugins             ] [Black Widow] loaded [analysis-icu], sites [head]
# [INFO ][node                ] [Black Widow] initialized
# [INFO ][node                ] [Black Widow] starting ...
# [INFO ][node                ] [Black Widow] started
