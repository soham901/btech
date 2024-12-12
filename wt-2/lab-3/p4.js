const fs = require("fs");
const data = fs.readFileSync("p4.txt", "utf-8");
let count = 0;
for (let i = 0; i < data.length; i++) {
  if (
    data[i] == "a" ||
    data[i] == "e" ||
    data[i] == "i" ||
    data[i] == "o" ||
    data[i] == "u"
  ) {
    count++;
  }
}
console.log("Total number of vowels in a file is: " + count);
