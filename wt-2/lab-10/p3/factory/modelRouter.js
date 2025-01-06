import { Router } from "express";
import { SEED_SECRET } from "../env.js";
import { standardRes } from "../utils.js";
import { isValidObjectId } from "mongoose";

export function createModelRouter(model, mockData = []) {
    const router = Router();

    // Seed endpoint
    router.get("/seed", async (req, res) => {
        if (req.query.secret !== SEED_SECRET) {
            res.status(401).send("Unauthorized");
            return;
        }

        await model.deleteMany({});

        for (const item of mockData) {
            const instance = new model(item);
            await instance.save();
        }

        res.send(`Successfully seeded ${mockData.length} records`);
    });

    // Get all records
    router.get("/", async (req, res) => {
        const records = await model.find({});
        standardRes(res, 200, "Success", records);
    });

    // Get record by ID
    router.get("/:id", async (req, res) => {
        const { id } = req.params;

        const record = await model.findById(id);

        if (!record) {
            standardRes(res, 404, "Record not found");
            return;
        }

        standardRes(res, 200, "Success", record);
    });

    // Create new record
    router.post("/", async (req, res) => {
        const record = new model(req.body);
        await record.save();
        standardRes(res, 201, "Record created", record);
    });

    // Update record by ID
    router.put("/:id", async (req, res) => {
        const { id } = req.params;
        const record = await model.findByIdAndUpdate(id, req.body, { new: true });

        if (!record) {
            standardRes(res, 404, "Record not found");
            return;
        }

        standardRes(res, 200, "Record updated", record);
    });

    // Delete record by ID
    router.delete("/:id", async (req, res) => {
        const { id } = req.params;
        const record = await model.findByIdAndDelete(id);

        if (!record) {
            standardRes(res, 404, "Record not found");
            return;
        }

        standardRes(res, 200, "Record deleted", record);
    });

    return router;
}
