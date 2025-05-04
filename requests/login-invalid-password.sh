#!/bin/bash

# Tentativa de login com senha incorreta
curl -X POST http://localhost:3000/api/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "teste@exemplo.com",
    "password": "senha_errada"
  }'

echo -e "\n"