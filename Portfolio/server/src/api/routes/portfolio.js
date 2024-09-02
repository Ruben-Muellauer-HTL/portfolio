import express from 'express';
import asyncHandler from 'express-async-handler';
import { getTimeline, getWebProjects, getDesigns } from '../controller/portfolio.js';

const router = express.Router();

router.get('/timeline', asyncHandler(getTimeline));

router.get('/webprojects', asyncHandler(getWebProjects));

router.get('/designs', asyncHandler(getDesigns));

export default router;
