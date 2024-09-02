<script setup>
import { ref } from 'vue';
import { toogleDialog, toogleDialogDesign } from '../utils/toogleDialogue.js';
import { storeToRefs } from 'pinia';
import { usePortfolioStore } from '../stores/portfolioStore.js';
import WebDevCard from '../components/WebDevCard.vue';
import WebDialogue from '../components/WebDialogue.vue';
import DesignDialogue from '../components/DesignDialogue.vue';

const portfolioStore = usePortfolioStore();
const { webprojects, designs } = storeToRefs(portfolioStore);

portfolioStore.fetchWebProjects();
portfolioStore.fetchDesigns();

const project = ref();
const image = ref('');

const showDialogue = (p) => {
  project.value = p;
  toogleDialog.value = !toogleDialog.value;
};

const imageSelect = (img) => {
  image.value = img;
  toogleDialogDesign.value = !toogleDialogDesign.value;
};
</script>

<template>
  <div class="text-center q-mt-xl">
    <div class="column">
      <span class="text-h3 q-ml-lg">Diplomarbeit - Akztar</span>
      <div class="row q-pr-xl q-pt-lg q-pb-lg justify-center">
        <div class="col-12 col-md-6 text-left q-pr-xl row" style="width: 40%">
          <span class="text-h5">Projektbeschreibung</span>
          <p>
            Unsere Diplomarbeit widmet sich der Entwicklung eines Plattformspiels, das auf kreative
            Weise griechische Mythologie vermittelt.
          </p>

          <span class="text-h5 q-mt-lg">Spielkonzept</span>
          <p>
            Jedes Level des Spiels ist einem spezifischen Gott gewidmet und erzählt dessen
            Geschichte. Dadurch werden die Spieler nicht nur unterhalten, sondern erweitern auch ihr
            Wissen über die griechische Mythologie.
          </p>

          <span class="text-h5 q-mt-lg">Ziel des Projekts</span>
          <p>
            Unser Ziel ist es, eine zugängliche Einführung in die griechische Mythologie zu bieten
            und somit eine Bildungslücke zu schließen.
          </p>

          <span class="text-h5 q-mt-lg">Wissensvermittlung durch Gamifizierung</span>
          <p>
            Durch die Gamifizierung der Mythen möchten wir Neugier wecken und auf unterhaltsame
            Weise Wissen vermitteln.
          </p>
        </div>
        <div class="col-12 col-md-6">
          <video src="../assets/AkztarTrailer.mp4" autoplay loop contain style="width: 100%" />
        </div>
      </div>

      <span class="text-h3 q-ml-lg q-mt-xl">Web Developement Projekte</span>
      <div class="row justify-center">
        <WebDevCard :web="webprojects" @dialogue="(val) => showDialogue(val)"></WebDevCard>
      </div>
    </div>
    <div class="column">
      <span class="text-h3 q-ml-lg q-mt-xl">Kreative Design Projekte</span>
      <div class="row justify-center q-mt-lg">
        <img
          v-for="d in designs"
          :key="d"
          :src="`http://localhost:3000/images/designs/${d.name}`"
          style="width: 28rem"
          class="q-ma-md zoom"
          @click="imageSelect(d.name)"
        />
      </div>
    </div>
  </div>
  <WebDialogue :w="project"></WebDialogue>
  <DesignDialogue :w="image"></DesignDialogue>
</template>

<style>
.zoom {
  transition: transform 0.2s;
}

.zoom:hover {
  transform: scale(1.05);
}
</style>
