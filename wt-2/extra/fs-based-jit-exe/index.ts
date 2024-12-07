import { exists, readFile, writeFile } from "node:fs/promises";

const filePath = "ui.txt";

setInterval(async () => {
  const data = await readFile(filePath, "utf-8");

  console.log(data);

  await writeFile(filePath, eval(data));
}, 2000);
