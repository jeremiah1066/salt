/etc/yum.repos.d/mongodb.repo:
  file.managed:
    - source: salt://mongodb/mongodb.repo
mongo-10gen-server:
  pkg:
    - installed
mongod:
  service:
    - running
