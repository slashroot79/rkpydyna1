#!/bin/bash

# Run the Gunicorn server
gunicorn --bind=0.0.0.0:8000 app:app
