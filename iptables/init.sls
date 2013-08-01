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
