<template>
  <div class="w-100">
    <h2 class="py-2 text-center text-dark">Projects</h2>
    <div class="container-fluid my-5">
      <div v-for="i in numOfRows" :key="i" class="row">
        <div class="col-md-6 mb-4">
          <project
            :title="projects[i - 1].title"
            :lang="projects[i - 1].lang"
            :year="projects[i - 1].year"
          />
        </div>
        <div v-if="i < projects.length" class="col-md-6 mb-4">
          <project
            :title="projects[i].title"
            :lang="projects[i].lang"
            :year="projects[i].year"
          />
        </div>
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
  }
</script>

<style></style>
