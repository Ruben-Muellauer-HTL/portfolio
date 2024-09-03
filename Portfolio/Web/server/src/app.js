import express from 'express';
import morgan from 'morgan';
import dotenv from 'dotenv';
import cors from 'cors';
import path from 'path';

import PortfolioRouter from './api/routes/portfolio.js';
import { errorHandler, notFoundHandler } from './error/errorHandler.js';

dotenv.config();

const dirname = path.resolve();

const app = express();

app.use(morgan('tiny'));
app.use(cors());
app.use(express.static(path.join(dirname, '/public')));
app.use(express.json());

app.use('/', PortfolioRouter);

app.use(errorHandler);

app.use(notFoundHandler);

const PORT = process.env.PORT ?? 5555;

app.listen(PORT, () => console.log(`Listening on port ${PORT}`));
console.log('Server started');
