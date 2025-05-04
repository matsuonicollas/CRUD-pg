# Registrar um usuário com sucesso
curl -X POST http://localhost:3000/api/register \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Usuário Teste",
    "email": "teste@exemplo.com",
    "password": "senha123"
  }'

echo -e "\n"