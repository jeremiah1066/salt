{% if grains['os_family'] == 'RedHat' %}
vim-enhanced:
  pkg.installed
{% elif grains['os_family'] == 'Debian' %}
vim:
  pkg.installed
{% endif %}
