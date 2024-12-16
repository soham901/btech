import express from "express";

const app = express();

const PORT = 3000;

const config = [
  {
    path: "/",
    content: "Home Page",
  },
  {
    path: "/about",
    content: "About Page",
  },
  {
    path: "/contact",
    content: "Contact Page",
  },
  {
    path: "/support",
    content: "Support Page",
  },
];

config.map((c) => {
  app.get(c.path, (req, res) => res.send(c.content));
});

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
