import { dbGetTimeline, dbGetWebProjects, dbGetDesigns } from '../models/portfolio.js';

const getTimeline = async (req, res) => {
  const { rows } = await dbGetTimeline();
  res.status(200).json(rows);
};

const getWebProjects = async (req, res) => {
  const { rows } = await dbGetWebProjects();
  res.status(200).json(rows);
};

const getDesigns = async (req, res) => {
  const { rows } = await dbGetDesigns();
  res.status(200).json(rows);
};
export { getTimeline, getWebProjects, getDesigns };
