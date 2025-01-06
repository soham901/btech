import { Schema, model } from 'mongoose';

const studentSchema = new Schema({
    name: {
        type: String,
        required: true
    },
    language: {
        type: String,
        required: true
    },
    bio: {
        type: String,
        required: true
    },
    spi: {
        type: Number,
        required: true
    },
});

export const Student = model('Student', studentSchema);
