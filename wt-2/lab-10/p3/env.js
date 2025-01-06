import { config } from 'dotenv';

config();

export const DB_URL = String(process.env.DB_URL);

export const PORT = Number(process.env.PORT) || 3000;

export const SEED_SECRET = String(process.env.SEED_SECRET);
