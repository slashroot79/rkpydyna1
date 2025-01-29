#!/bin/bash

#!/bin/bash
# Install Dynatrace OneAgent
# curl -o Dynatrace-OneAgent.sh https://<your-environment-id>.live.dynatrace.com/api/v1/deployment/installer/agent/unix/default/latest?Api-Token=<your-api-token>
# chmod +x Dynatrace-OneAgent.sh
# ./Dynatrace-OneAgent.sh

echo "******************* in start.sh *************************************************"
# Start your Flask app with Gunicorn
gunicorn --bind 0.0.0.0:8000 wsgi:app
