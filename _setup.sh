#!/bin/bash

if [ ! -f .env ]; then
  echo ".env not found, copying from example.env"
  cp example.env .env
else
  echo ".env already exists"
fi

if [ ! -f traefik/data/acme.json ]; then
  echo "acme.json not found, creating and setting permissions"
  touch traefik/data/acme.json
  chmod 700 traefik/data/acme.json
else
  echo "acme.json already exists"
fi
