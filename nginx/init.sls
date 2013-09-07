nginx:
/etc/yum.repos.d/nginx.repo:
  file.managed:
    - source: salt://nginx/nginx.repo
    - mode: 644
    - user: root
    - group: root
nginx: 
  require:
    - file: /etc/yum.repos.d/nginx.repo
  pkg:
    - installed
  service:
    - running
