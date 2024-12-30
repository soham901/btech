import { Router } from "express";

import { data, People } from "../services/people";


const peopleRouter = Router();
const peopleService = new People(data);


peopleRouter.get("/", (req, res) => {
    res.send(peopleService.get());
});

peopleRouter.get("/spi/:spi", (req, res) => {
    const spi = parseInt(req.params.spi);
    res.send(peopleService.filter(rec => rec.spi > spi));
});

// console.log(d1.filter((rec) => rec.spi > 5));
// console.log(d1.filter((rec) => rec.spi < 5).count());
// console.log(d1.filter((rec) => rec.language === "Hindi"));
// console.log(d1.filter((rec) => rec.language === "Sindhi" && rec.name.toUpperCase().startsWith("A")));
