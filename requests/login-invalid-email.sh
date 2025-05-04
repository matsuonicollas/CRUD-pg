#!/bin/bash

# Tentativa de login com email que não existe
curl -X POST http://localhost:3000/api/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "naoexiste@exemplo.com",
    "password": "senha123"
  }'

echo -e "\n"