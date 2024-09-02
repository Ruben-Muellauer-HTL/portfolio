<script setup>
defineProps({ web: Object });
const emits = defineEmits('dialogue');
</script>

<template>
  <q-card style="width: 25rem" class="zoom q-mt-xl q-ml-lg q-mb-xl" v-for="w in web" :key="w">
    <img
      :src="`http://localhost:3000/images/backgrounds/${w.titleimage}`"
      @click="emits('dialogue', w)"
    />

    <q-card-section>
      <div class="text-h6">{{ w.name }}</div>
      <div class="row justify-center">
        <img
          v-for="i in w.icons"
          :key="i"
          class="q-ml-sm q-mt-sm q-mr-sm"
          style="width: 40px"
          :src="`http://localhost:3000/images/icons/${i}`"
        />
      </div>
    </q-card-section>

    <q-card-section class="q-pt-none"> </q-card-section>
  </q-card>
</template>

<style>
.zoom {
  transition: transform 0.2s;
}

.zoom:hover {
  transform: scale(1.09);
}
</style>
