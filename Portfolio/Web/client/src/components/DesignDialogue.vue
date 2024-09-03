<script setup>
import { toogleDialogDesign } from '../utils/toogleDialogue.js';

defineProps({ w: Object });
</script>

<template>
  <q-dialog v-model="toogleDialogDesign" class="row justify-center">
    <q-card class="q-mt-xl q-mb-xl">
      <img :src="`http://localhost:3000/images/designs/${w}`" />
    </q-card>
  </q-dialog>
</template>
