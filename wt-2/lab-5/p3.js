const fs = require("fs");

const file = fs.readFileSync("p3.txt", "utf8");

console.log(file.split("\n").join(" ").split(" ").length);
