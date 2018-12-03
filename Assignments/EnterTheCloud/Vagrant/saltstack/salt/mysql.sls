install mysql:
  pkg.installed:
    - name: mysql-server

run mysql:
  service.running:
    - name: mysql
    - enable: True
    - require:
      - pkg: install mysql
