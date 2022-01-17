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
            {{ item.subtitle }}
            <span class="fw-bold fs-6 mx-2 text-danger">{{ item.year }}</span>
          </div>
          <div class="fs-5">{{ item.info }}</div>
        </li>
      </ol>
      <div v-if="title != 'Education'" class="text-center">
        <a
          href="https://www.linkedin.com/in/smankar"
          class="btn btn-dark m-2"
          target="_blank"
        >
          💻 &nbsp; Linkedin
        </a>
        <a :href="pdf" class="btn btn-danger m-2" target="_blank">
          📝 &nbsp; Resume
        </a>
      </div>
    </div>
  </div>
</template>

<script>
  import pdf from '../assets/resume.pdf'

  export default {
    props: {
      title: { type: String, default: 'Error' },
    },

    data() {
      return {
        pdf: pdf,
        jobs: [
          {
            title: 'Graduate Assistant',
            subtitle: 'North Carolina State University',
            year: '2022',
            info: `I am currently assisting the Computer Science department at NC State in creating evaluation reports for undergraduate Computer Science courses.`,
          },
          {
            title: 'Software Development Engineer',
            subtitle: 'Nudron IoT Solutions',
            year: '2021',
            info: `At Nudron, I developed an operational dashboard using Vuejs to keep a track of and manage users and IoT devices. I also developed a chat application using Websockets in Golang and JS.`,
          },
          {
            title: 'Web Development Intern',
            subtitle: 'Tata Consultancy Services',
            year: '2019',
            info: `During the internship, I worked as a Full Stack Developer on a Medical Appointment Booking System for the client. The technologies used for this included Angular, Springboot and MySQL.`,
          },
          {
            title: 'Research Intern',
            year: '2018',
            subtitle: 'Fr. Conceicao Rodrigues College of Engineering',
            info: `As a research intern, I was responsible for creating a client-end web application to track and manage a smart wearable watch. We used Arduino Uno for the development of the smart watch, and Angular for front-end development.`,
          },
        ],

        schools: [
          {
            title: 'North Carolina State University, Raleigh',
            subtitle: 'Master of Computer Science',
            year: 'Present',
            info: `GPA: 4.0/4.0. Coursework includes Design and Analysis of Algorithms, Automated Learning and Data Analytics, Software Engineering, Database Systems, User Experience and Software Security`,
          },
          {
            title: 'University of Mumbai',
            subtitle: 'Bachelors of Engineering in Computer Engineering',
            year: '2020',
            info: `CGPA: 8.72/10. Coursework included Natural Language Processing, Web Development, Digital Signal and Image Processing and Discrete Mathematics`,
          },
          {
            title: 'Maharashtra State Board',
            subtitle: 'Higher Secondary Certificate - Science',
            year: '2016',
            info: `H.S.C - 82.30 %`,
          },
          {
            title: 'Maharashtra State Board',
            subtitle: 'Secondary School Certificate',
            year: '2014',
            info: `S.S.C - 93.60 %`,
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
