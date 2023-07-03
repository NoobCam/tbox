#!/bin/sh

# =======================================================================================
# Terminate the tbox
# =======================================================================================

# Set long timeout to prevent errors with 'docker-compose down' command (slow on MyCloud EX2 Ultra)
export COMPOSE_HTTP_TIMEOUT=600

# - Stop and remove containers
docker compose down