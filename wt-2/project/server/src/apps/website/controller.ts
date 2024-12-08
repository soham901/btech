import { Router } from "express";

export const router = Router();

type Site = {
  name: string;
  url: string;
};

const sites: Site[] = [
  {
    name: "portfolio v1",
    url: "https://soham901.github.io",
  },
];

router.get("/", (req, res) => {
  res.json({ sites });
});

router.get("/:query", (req, res) => {
  const { query } = req.params;

  const regex = new RegExp(query, "i");

  const site = sites.find(
    (site) => regex.test(site.name) || regex.test(site.url)
  );

  if (!site) {
    res.status(404).json({ error: "site not found" });
    return;
  }

  res.json({ site });
});

router.post("/", (req, res) => {
  const { name, url } = req.body;

  if (!name || !url) {
    res.status(400).json({ error: "name and url are required" });
    return;
  }

  const parsedUrl = url.startsWith("http") ? url : `https://${url}`;

  sites.push({ name, url: parsedUrl });

  res.json({
    message: "site created",
    site: {
      name,
      url: parsedUrl,
    },
  });
});
