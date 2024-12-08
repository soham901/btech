import express, { Router } from "express";

import { config } from "dotenv";
import { websiteRouter } from "./apps";

config();

const app = express();
const api = Router();

const PORT = Number(process.env.PORT) || 3000;

app.use(express.json());

app.get("/", (req, res) => {
  res.json({ message: "it Works" });
});

// routing
app.use("/api", api);

api.use("/websites", websiteRouter);

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
