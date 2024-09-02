import { defineStore } from 'pinia';
import axios from 'axios';

import { ref } from 'vue';

export const usePortfolioStore = defineStore('portfolioStore', () => {
  const timeline = ref('');
  const webprojects = ref('');
  const designs = ref('s');

  const fetchTimeline = async () => {
    const { data } = await axios.get('http://localhost:3000/timeline');
    timeline.value = data;
  };

  const fetchWebProjects = async () => {
    const { data } = await axios.get('http://localhost:3000/webprojects');
    webprojects.value = data;
  };

  const fetchDesigns = async () => {
    const { data } = await axios.get('http://localhost:3000/designs');
    designs.value = data;
  };
  return { timeline, webprojects, designs, fetchTimeline, fetchWebProjects, fetchDesigns };
});
