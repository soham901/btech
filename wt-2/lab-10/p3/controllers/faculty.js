import { Router } from "express";

import { Faculty } from "../models/faculty.js";
import { faculties } from "../mockdata/faculties.js";
import { SEED_SECRET } from "../env.js";

import { standardRes } from "../utils.js";

export const router = Router();

router.get("/seed", async (req, res) => {
    if (req.query.secret !== SEED_SECRET) {
        res.status(401).send("Unauthorized");
        return;
    }

    await Faculty.deleteMany({});

    faculties.forEach(async faculty => {
        const fac = new Faculty(faculty);
        await fac.save();
    });

    res.send(`Successfully seed ${faculties.length} records`);
});

router.get("/", async (req, res) => {
    const allFaculties = await Faculty.find({});
    standardRes(res, 200, "Success", allFaculties);
});

router.get("/:id", async (req, res) => {
    const { id } = req.params;
    const faculty = await Faculty.findById(id);

    if (!faculty) {
        standardRes(res, 404, "Faculty not found");
        return;
    }

    standardRes(res, 200, "Success", faculty);
});


router.post("/", async (req, res) => {
    const faculty = new Faculty(req.body);
    await faculty.save();
    standardRes(res, 201, "Faculty created", faculty);
});

router.put("/:id", async (req, res) => {
    const { id } = req.params;
    const faculty = await Faculty.findByIdAndUpdate(id, req.body);

    if (!faculty) {
        standardRes(res, 404, "Faculty not found");
        return;
    }

    standardRes(res, 200, "Faculty updated", faculty);
});

router.delete("/:id", async (req, res) => {
    const { id } = req.params;
    const faculty = await Faculty.findByIdAndDelete(id);

    if (!faculty) {
        standardRes(res, 404, "Faculty not found");
        return;
    }

    standardRes(res, 200, "Faculty deleted", faculty);
});
