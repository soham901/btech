const fs = require("fs");

fs.copyFile("text.txt", "text-2.txt", (err) => {
  err ? console.log("Error happens") : console.log("DONE");
});
