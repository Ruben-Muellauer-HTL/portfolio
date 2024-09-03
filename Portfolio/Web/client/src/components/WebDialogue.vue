<script setup>
import { toogleDialog } from '../utils/toogleDialogue.js';

defineProps({ w: Object });
</script>

<template>
  <q-dialog v-model="toogleDialog" class="row justify-center">
    <q-card style="width: 50rem" class="q-mt-xl q-mb-xl">
      <img
        :src="`http://localhost:3000/images/backgrounds/${w.titleimage}`"
      />
      <q-card-section>
        <div class="text-h6 q-mt-md text-center" style="font-weight: bold">{{ w.name }}</div>
        <div class="q-mt-md" v-html="w.description"></div>
        <div class="text-h6 text-center q-mt-xl" style="font-weight: bold">
          Benutzte Technologien
        </div>
        <div class="row justify-center q-mt-md">
          <img
            v-for="i in w.icons"
            :key="i"
            class="q-ml-lg q-mt-sm q-mr-lg"
            style="width: 40px"
            :src="`http://localhost:3000/images/icons/${i}`"
          />
        </div>
      </q-card-section>

      <q-card-section class="q-pt-none"> </q-card-section>
    </q-card>
  </q-dialog>
</template>
