const fs = require("fs");

const data = fs.readFileSync("p5.txt", "utf-8");

function readData(data) {
  const res = [];
  data.split("\n").map((s) => {
    const dato = s.trim().split(",");

    res.push({
      id: parseInt(dato[0]),
      name: dato[1],
      enroll: dato[2],
      mobile: dato[3],
      dept: dato[4],
      spi: parseFloat(dato[5]),
    });
  });
  return res;
}

console.log(readData(data).filter((item) => item.spi >= 5));
