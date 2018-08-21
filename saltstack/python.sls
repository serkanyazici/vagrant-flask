python_repository:
  pkgrepo.managed:
    - ppa: fkrull/deadsnakes-python2.7

# Ubuntu Trusty comes with Python 2.7.6 built-in, which does not support 'SSLContext' attribute for Flask. Managed repo will upgrade python to 2.7.12 or higher.

python:
  pkg.uptodate:
    - force_yes: True

python3-pip:
  pkg.installed:
    - pkgs:
      - python-pip
      - python3-pip
    - require:
      - pkgrepo: python_repository

# python-pip is only required for salt 'pip.installed' state in order to work
