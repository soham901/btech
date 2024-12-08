import express, { Router } from "express";

import { config } from "dotenv";
import { archiveRouter, websiteRouter } from "./apps";
import "./apps/website/tasks";

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
app.use("/", archiveRouter);

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
