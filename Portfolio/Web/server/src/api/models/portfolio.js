import { query } from '../../db/index.js';

const dbGetTimeline = () =>
  query(`select title, subtitle, description, side, array_agg(i.name) as icons
from timeline
         left join time_icons ti on timeline.id = ti.tid
         left join icons i on i.id = ti.iid
group by title, subtitle, description, side, timeline.id
order by timeline.id;`);

const dbGetWebProjects = () =>
  query(`select w.name, description,titleimage, array_agg(i.name) as icons from web_projects w
    join web_icons wi on w.wid = wi.wid
join icons i on i.id = wi.iid
group by w.name, description, w.wid,titleimage
order by w.wid;`);

const dbGetDesigns = () => query('select * from design_images;');

export { dbGetTimeline, dbGetWebProjects, dbGetDesigns };
