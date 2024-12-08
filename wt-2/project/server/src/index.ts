import express from "express";

import { config } from "dotenv";

config();

const app = express();
const PORT = Number(process.env.PORT) || 3000;

app.use(express.json());

app.get("/", (req, res) => {
  res.json({ message: "it Works" });
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
