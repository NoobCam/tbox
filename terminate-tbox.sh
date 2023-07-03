#!/bin/sh

# =======================================================================================
# Terminate the tbox
# =======================================================================================

# Set long timeout to prevent errors with 'docker-compose down' command
export COMPOSE_HTTP_TIMEOUT=600

# - Stop and remove containers
docker compose down