import express from "express";
import fs from "fs";

const app = express();

const PORT = 3000;

const config = [
  {
    path: "/contact",
    filePath: "./public/contact.txt",
    content: "",
  },
  {
    path: "/about",
    filePath: "./public/about.txt",
    content: "",
  },
].map((c) => ({
  ...c,
  content: fs.readFileSync(c.filePath, "utf-8"),
}));

config.map((c) => {
  app.get(c.path, (req, res) => res.send(c.content));
});

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
