gunicorn:
  pip.installed:
    - name: Gunicorn
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python3-pip
