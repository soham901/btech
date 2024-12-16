const cp = require("child_process");

cp.exec("pwd", (err, stdout, stderr) => {
  err ? console.error("Error:", err) : console.log(stdout);
});
