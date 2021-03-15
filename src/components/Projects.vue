<template>
  <div class="w-100">
    <h2 class="py-2 text-center text-dark">Projects</h2>
    <div class="container-fluid my-5">
      <div v-for="index in numOfRows" :key="index" class="row">
        <template v-for="i in getIndices(index)" :key="`${index}${i}`">
          <div v-if="i < projects.length" class="col-md-6 mb-4">
            <project
              :title="projects[i].title"
              :lang="projects[i].lang"
              :year="projects[i].year"
            />
          </div>
        </template>
      </div>
    </div>
  </div>
</template>

<script>
  import Project from './Project'
  export default {
    components: {
      Project,
    },

    computed: {
      numOfRows() {
        let len = this.projects.length
        return Math.ceil(len / 2)
      },
    },

    data() {
      return {
        projects: [
          { title: 'Algorithm Visualizer', lang: 'Javascript', year: '2021' },
          { title: 'Custom Playfair Cipher', lang: 'Python', year: '2019' },
          { title: 'Sentiment Analyzer', lang: 'Python', year: '2019' },
        ],
      }
    },

    methods: {
      getIndices(i) {
        // Returns the index in projects for column
        // Note that the index (i in numOfRows) starts from 1
        // Return value examples
        // Ex. i = 1 => return 0,1
        //Ex. i = 2 => return 2,3
        return [2 * i - 2, 2 * i - 1]
      },
    },
  }
</script>

<style></style>
