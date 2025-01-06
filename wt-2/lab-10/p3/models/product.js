import { Schema, model } from 'mongoose';


const productSchema = new Schema({
    createdAt: {
        type: Date,
        default: Date.now
    },
    LaptopName: {
        type: String,
        required: true
    },
    LaptopImage: {
        type: String,
        required: true
    },
    LaptopPrice: {
        type: String,
        required: true
    },
    LaptopCompany: {
        type: String,
        required: true
    },
    LaptopRamSize: {
        type: Number,
        required: true
    },
    LaptopSSDSize: {
        type: Number,
        required: true
    },
});

export const Product = model('Product', productSchema);