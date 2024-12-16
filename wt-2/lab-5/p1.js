// a js file in node js to store student details [ name , rollNo , enrollment no , mob no , SPI ] in txt file

const fs = require("fs");

let student = {
  name: "Aman",
  rollNo: 1,
  enrollmentNo: 1234,
  mobNo: 1234567890,
  SPI: 9.5,
};

fs.writeFileSync("student.txt", JSON.stringify(student));

const data = fs.readFileSync("student.txt", "utf-8");

console.log(data);
