install curl:
  pkg.installed:
    - name: curl

execute curlcommand for nodejs:
  cmd.run:
    - name: 'curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -'
    - require_in:
      pkg: install nodejs

install nodejs:
  pkg.installed:
    - name: nodejs
