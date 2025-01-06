import { Schema, model } from 'mongoose';

const facultySchema = new Schema({
    createdAt: {
        type: Date,
        default: Date.now
    },
    FacultyName: {
        type: String,
        required: true
    },
    FacultyImage: {
        type: String,
        required: true
    },
    FacultyInitial: {
        type: String,
        required: true
    },
    FacultyDescription: {
        type: String,
        required: true
    },
    FacultyDateOfBirth: {
        type: Date,
        required: true
    }
});

export const Faculty = model('Faculty', facultySchema);