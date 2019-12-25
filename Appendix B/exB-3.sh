# 예제 B.3 사용 가능한 plugin 스크립트 옵션

bin/plugin
# 사용법:
# -u, --url    [플러그인 위치]      : 플러그인을 내려받을 정확한 URL을 설정한다
#     -i, --install [플러그인명]    : 열거한 플러그인을 내려받아 설치한다. [*]
#     -t, --timeout [기간]          : 타임아웃 설정: 30s, 1m, 1h...
#     (기본으로 무한대)
#     -r, --remove  [플러그인명]     : 열거한 플러그인을 제거한다.
#     -l, --list                    : 설치한 플러그인을 열거한다.
#     -v, --verbose                 : 자세한 메시지 출력한다.
#     -s, --silent                  : 무언 모드로 실행한다.
#     -h, --help                    : 도움말을 출력한다.

# [*] 플러그인 이름은 아래와 같이 정말 수 있다.
#      elasticsearch/plugin/version 공식 일래스틱서치 플러그인
#      (download.elasticsearch.org에서 내려받는다.)
#      groupId/artifactId/version   커뮤니티 플러그인
#      (maven central 나 oss sonatype에서 내려받는다.)
#      username/repository          for site plugins
#      (github master에서 내려받는다.)
