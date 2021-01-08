#!/usr/bin/env bash

PROJECT=application

cat "$PWD/.env/docker-compose.yml" | envsubst '$PWD' | docker-compose -p "$PROJECT" -f - "$@"