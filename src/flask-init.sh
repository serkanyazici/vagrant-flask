#!/bin/bash

PYFILE=$1

#if ! [ -x "$(command -v flask)" ]; then
#  echo 'Error: flask is not found.' >&2
#  exit 1
#fi

export FLASK_APP=/opt/my_app/${PYFILE}
export FLASK_ENV=development

GUNICORN_F=`echo $PYFILE | cut -d"." -f1`

#nohup /usr/local/bin/flask run --host=0.0.0.0 &> /home/vagrant/nohup.out&
cd /opt/my_app/ && nohup /usr/local/bin/gunicorn --bind=0.0.0.0:5000 --reload --access-logfile '-' $GUNICORN_F:app &> /home/vagrant/nohup.out&
