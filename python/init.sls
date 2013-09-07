python-pip:
  pkg.installed
{% if grains['roles'] == 'devserver' %}
pyrax:
  pip.installed:
    - require: 
      - pkg: python-pip
{% elif grains['roles'] == 'flask_server' %} 
flask:
  pip.installed:
    - require:
      - pkg: python-pip
pymongo:
  pip.installed:
    - require:
      - pkg: python-pip
{% endif %}
