{% if grains['os_family'] == 'RedHat' %}
httpd:
{% elif grains['os_family'] == 'Debian' %}
apache2:
{% endif %}
  pkg:
    - installed
  service:
    - running
{% if grains['os_family'] == 'RedHat' %}
/var/www/html/index.html:
{% elif grains['os_family'] == 'Debian' %}
/var/www/index.html:
{% endif %}
  file.managed:
    - source: salt://httpd/index.html
    - mode: 644
    - template: jinja
    - require:
{% if grains['os_family'] == 'RedHat' %}
      - pkg: httpd
    - user: apache
    - group: apache
{% elif grains['os_family'] == 'Debian' %}
      - pkg: apache2
    - user: www-data
    - group: www-data
{% endif %}      
