#!/usr/bin/env bash

gunicorn --bind 0.0.0.0:8080 api.wsgi --workers=4
