install nginx:
  pkg.installed:
    - name: nginx

run nginx:
  service.running:
    - name: nginx
    - enable: True
    - require:
      - pkg: install nginx
