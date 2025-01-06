import { connect } from "mongoose";

import { DB_URL } from "./env.js";


export const connectDB = async () => {
    try {
        console.info("Connecting to MongoDB");
        await connect(DB_URL);
        console.info("Connected to MongoDB successfully");
    } catch (error) {
        console.error("Error connecting to MongoDB");
        console.error(error);
    }
}