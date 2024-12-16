import path from "path";

const filePath = path.join("abc", "xyz", "ngnix.conf");

console.log(filePath);

console.log(path.dirname(filePath));

console.log(path.basename(filePath));

console.log(path.extname(filePath));

console.log(path.normalize(`${filePath}/../qwerty/..`));
