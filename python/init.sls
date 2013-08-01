python-pip:
  pkg.installed
pyrax:
  pip.installed:
    - require: 
      - pkg: python-pip
