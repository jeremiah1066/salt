python-pip:
  pkg.installed
pyrax:
  cmd.script:
    - source: salt://python/pyrax.sh
    - user: root
    - shell: /bin/bash
    - require:
      - pkg: python-pip
