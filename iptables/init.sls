{% if grains['os_family'] == 'RedHat' %}
iptables:
  pkg:
    - installed
  service:
    - running
    - watch:
      - file: /etc/sysconfig/iptables
/etc/sysconfig/iptables:
  file.managed:
    - source: salt://iptables/iptables.txt
    - template: jinja
    - require:
      - pkg: iptables
{% elif grains['os_family'] == 'Debian' %}
ufw:
  pkg:
    - installed
  service:
    - running
    - watch:
      - file: /lib/ufw/user.rules
/lib/ufw/user.rules:
  file.managed:
    - source: salt://iptables/ufw.txt
    - template: jinja
    - require:
      - pkg: ufw
{% endif %}
