const fs = require("fs");

fs.promises
  .readFile("p4.txt", "utf-8")
  .then((data) => {})
  .catch((err) => {});

(async () => {
  try {
    const data = await fs.promises.readFile("p4.txt", "utf-8");
  } catch (error) {}
})();
