import express from 'express';

import { connectDB } from './db.js';
import { PORT } from './env.js';
import { createModelRouter } from './factory/modelRouter.js';
import { Faculty } from './models/faculty.js';
import { Student } from './models/student.js';
import { Product } from "./models/product.js";
import { faculties as facultiesMockdata } from './mockdata/faculties.js';
import { students as studentsMockdata } from './mockdata/students.js';
import { products as productsMockdata } from './mockdata/products.js';


const app = express();

app.get('/', (_, res) => res.send('Healthy'));

app.use('/faculties', createModelRouter(Faculty, facultiesMockdata));
app.use('/students', createModelRouter(Student, studentsMockdata));
app.use('/products', createModelRouter(Product, productsMockdata));


(async () => {
    await connectDB();

    app.listen(PORT, () => {
        console.info(`Server is running on http://localhost:${PORT}`);
    });
})();