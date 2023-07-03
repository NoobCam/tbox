#!/bin/sh

# =======================================================================================
# Launch the monitor for Docker tbox
# =======================================================================================

# Set long timeout to prevent errors with 'docker-compose up' command

# - Pull new images from docker hub (update)
# - Start container and wait until configuration finished
docker compose -p dtf-monitor -f docker-compose-monitor.yml pull && \
docker compose -p dtf-monitor -f docker-compose-monitor.yml up -d