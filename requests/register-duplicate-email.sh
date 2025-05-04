#!/bin/bash

# Tentativa de registrar um usuário com e-mail duplicado
curl -X POST http://localhost:3000/api/register \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Usuário Duplicado",
    "email": "teste@exemplo.com",
    "password": "senha123"
  }'

echo -e "\n"