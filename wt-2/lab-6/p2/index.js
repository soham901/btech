const http = require("http");

const PORT = 3000;

const server = http.createServer((req, res) => {
  switch (req.url) {
    case "/":
      res.write("Home Page");
      break;
    case "/about":
      res.write("About Page");
      break;
    case "/contact":
      res.write("Contact Page");
      break;
    case "/support":
      res.write("Support Page");
      break;
    default:
      res.write("404 : Page Not Found");
  }
  res.end();
});

server.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
