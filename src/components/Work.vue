<template>
  <div>
    <h2 class="py-2 text-center text-dark">
      {{ title }}
    </h2>
    <div class="p-3 p-md-5">
      <ol class="fw-light">
        <li v-for="(item, i) in items" :key="i" class="mb-5 mt-3">
          <div class="fs-3 fw-normal">{{ item.title }}</div>
          <div class="fs-5 mb-3 fw-normal">
            @ {{ item.place }}
            <span class="fw-bold fs-6 mx-2 text-danger">{{ item.year }}</span>
          </div>
          <div class="fs-5">{{ item.info }}</div>
        </li>
      </ol>
    </div>
  </div>
</template>

<script>
  export default {
    props: {
      title: { type: String, default: 'Error' },
    },

    data() {
      return {
        jobs: [
          {
            title: 'Software Development Engineer',
            place: 'Nudron IoT Solutions',
            year: '2021',
            info: `Working at Nudron has given me a great insight into how companies operate. At Nudron, I am developing a single page web application using Vue.JS while also assisting the team in back-end technologies and processes.`,
          },
          {
            title: 'Web Development Intern',
            place: 'Tata Consultancy Services',
            year: '2019',
            info: `I got a comprehensive experience of developing high-quality Full Stack websites as I worked as a Web Development Intern in the summer of 2019. My time at TCS was inspiring, and I learned a lot from this internship.`,
          },
          {
            title: 'Research Intern',
            year: '2018',
            place: 'Fr. Conceicao Rodrigues College of Engineering',
            info: `In the summer or 2018, I worked on a fascinating university-funded research project. It challenged me to undertake numerous responsibilities and work with technologies in which I had insignificant knowledge.`,
          },
        ],

        schools: [
          {
            title: 'B.E. Computer Engineering',
            place: 'Fr. Conceicao Rodrigues College of Engineering',
            year: '2020',
            info: `CGPA 8.72/10`,
          },
        ],
      }
    },

    computed: {
      items() {
        if (this.title === 'Education') {
          return this.schools
        }
        return this.jobs
      },
    },
  }
</script>

<style></style>
