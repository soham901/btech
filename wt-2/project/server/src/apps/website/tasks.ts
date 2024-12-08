import cron from "node-cron";
import fs from "fs";
import axios from "axios";
import { Site, sites } from "./controller";

// Fetch the site data
const fetchSiteData = async () => {
  console.log("Fetching site data...");
  try {
    const siteDataPromises = sites.map(async (site: Site) => {
      try {
        const response = await axios.get(site.url);
        return {
          name: site.name,
          url: site.url,
          data: response.data,
          lastFetched: new Date().toISOString(),
        };
      } catch (error) {
        console.error(`Error fetching data for ${site.name}:`, error);
        return null;
      }
    });

    const fetchedData = await Promise.all(siteDataPromises);

    // Filter out null values (failed fetches)
    const validData = fetchedData.filter((data) => data !== null);

    // Persist data locally (example: JSON file)
    fs.writeFileSync("site-data.json", JSON.stringify(validData, null, 2));

    console.log("Site data fetched and saved successfully.");
  } catch (error) {
    console.error("Error in fetching site data:", error);
  }
};

// cron.schedule("* * * * *", fetchSiteData);
fetchSiteData();

console.log("Cron job started");
