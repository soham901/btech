import {
  writeFile,
  readFile,
  appendFile,
  stat,
  unlink,
  rename,
} from "node:fs/promises";

const filePath = "example.txt";
const newFilePath = "example2.txt";

(async () => {
  await writeFile(
    filePath,
    `${new Date().toISOString()} : Creating the file`,
    (err) => {
      if (err) {
        console.log("Error");
      }
      console.log("DONE");
    }
  );

  await appendFile(
    filePath,
    `\n${new Date().toISOString()} : Appending to the file`
  );

  const data = await readFile(filePath, "utf-8");

  const stats = await stat(filePath);

  console.log(`Reading the file (${stats.size / 1000} KB):\n${data}`);
  console.table(stats);

  console.log("\nRenaming the file...");
  await rename(filePath, newFilePath);

  console.log("\nDeleting the file...");
  await unlink(newFilePath);
})();
