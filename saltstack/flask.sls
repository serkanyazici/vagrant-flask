flask:
  pip.installed:
    - name: Flask
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python3-pip
