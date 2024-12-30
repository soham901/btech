import express from "express";

const app = express();

const PORT = 3000;

const basicAuth = (req, res, next) => {
  const { jwt } = req.headers;

  if (jwt) {
    // decode the token
    next();
  }

  res.statusCode = 401;
  res.send("Unauthorized");
};

app.get("/", basicAuth, (req, res) => res.send("Done"));

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
