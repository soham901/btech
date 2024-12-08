import { Router } from "express";

import { readFile } from "fs/promises";

export const getArchive = async () => {
  const data = await readFile("./site-data.json", "utf8");
  return JSON.parse(data);
};

export const router = Router();

router.get("/:url", async (req, res) => {
  const { url } = req.params;

  const archives = await getArchive();

  console.log(archives);

  const site = archives.find((site: { url: string }) => {
    const regex = new RegExp(url, "i");
    return regex.test(site.url);
  });

  if (!site) {
    res.status(404).json({ error: "site not found" });
    return;
  }

  res.setHeader("Content-Type", "text/html");
  res.send(site.data);
});
