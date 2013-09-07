base:
  '*':
    - iptables
    - git
  'roles:devserver':
      - match: grain
      - apache
      - screen
      - vim
      - curl
      - python
  'roles:flask_server':
    - match: grain
    - nginx
    - git
    - vim
    - mongodb
    - python
