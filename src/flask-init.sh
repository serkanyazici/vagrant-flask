#!/bin/bash

PYFILE=$1

#if ! [ -x "$(command -v flask)" ]; then
#  echo 'Error: flask is not found.' >&2
#  exit 1
#fi

export FLASK_APP=/opt/my_app/${PYFILE}
export FLASK_ENV=development

nohup /usr/local/bin/flask run --host=0.0.0.0 &> /home/vagrant/nohup.out&
