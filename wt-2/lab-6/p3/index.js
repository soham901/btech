const http = require("http");
const fs = require("fs");

const PORT = 3000;

const readFile = (name) => fs.readFileSync(`./public/${name}`);

const server = http.createServer((req, res) => {
  let fileContent = "";

  switch (req.url) {
    case "/contact":
      fileContent = readFile("contact.txt");
      break;
    case "/about":
      fileContent = readFile("about.txt");
      break;
    case "/img":
      fileContent = readFile("img.png");
      res.setHeader("Content-Type", "image/png");
      break;
  }

  if (fileContent === "") {
    res.write("404 : Page Not Found");
  } else {
    res.write(fileContent);
  }

  res.end();
});

server.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
