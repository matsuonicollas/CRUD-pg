import express from 'express';
import { register, login } from '../controller/clientcontroller.js';
import verifyToken from '../middleware/authmiddleware..js';

const router = express.Router();

router.post('/register', register);
router.post('/login', login);
export default router;
