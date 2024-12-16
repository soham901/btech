const http = require("http");

const PORT = 3000;

const server = http.createServer((req, res) => {
  res.write("Hello WOrld");
  res.end();
});

server.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
