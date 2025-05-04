import express from 'express';
import dotenv from 'dotenv';
import db from './database/configpg.js';
import User from './models/User.js';
import userRoute from './routes/userroute.js';
import exemploeroute from './routes/exampleroute.js';

dotenv.config();

const app = express();

app.use(express.json());
app.use("/user", userRoute);
app.use("/protected", exemploeroute);

app.get('/', (req, res) => {
  res.send({ message: 'Hello World!' });
});

(async () => {
  try {
    await User.sync(); // Sincroniza o modelo com o banco de dados
    console.log('Tabela users criada com sucesso!');
  } catch (error) {
    console.error('Erro ao criar a tabela users:', error);
  }
})();

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port http://localhost:${PORT}/`);
});
