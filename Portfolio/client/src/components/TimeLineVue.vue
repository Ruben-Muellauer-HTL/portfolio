<script setup>
import { storeToRefs } from 'pinia';
import { usePortfolioStore } from '../stores/portfolioStore.js';

const portfolioStore = usePortfolioStore();
const { timeline } = storeToRefs(portfolioStore);

portfolioStore.fetchTimeline();
</script>

<template>
  <q-timeline layout="loose" color="secondary">
    <q-timeline-entry heading class="q-mt-xl q-mb-xl">
      <span class="text-h3">Entwicklung meiner Erfahrungen an der HTL</span>
    </q-timeline-entry>

    <q-timeline-entry
      v-for="t in timeline"
      :key="t.id"
      :title="t.title"
      :subtitle="t.subtitle"
      :side="t.side"
    >
      <div class="row justify-end" v-if="t.side == 'left'">
        <div align="left" style="width: 50%">
          <span>{{ t.description }} </span>
          <div class="row q-mt-md">
            <img
              v-for="i in t.icons"
              :key="i"
              class="q-ml-md q-mr-md"
              style="width: 50px"
              :src="`http://localhost:3000/images/icons/${i}`"
            />
          </div>
        </div>
      </div>
      <div class="" v-if="t.side == 'right'">
        <div align="left" style="width: 50%">
          <span>{{ t.description }}</span>
          <div class="row q-mt-md">
            <img
              v-for="i in t.icons"
              :key="i"
              class="q-ml-md q-mr-md"
              style="width: 50px"
              :src="`http://localhost:3000/images/icons/${i}`"
            />
          </div>
        </div>
      </div>
    </q-timeline-entry>
  </q-timeline>
</template>
