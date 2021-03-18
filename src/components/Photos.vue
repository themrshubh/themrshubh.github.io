<template>
  <div class="text-dark text-center">
    <h2 class="py-2">
      Pictures
    </h2>
    <p class="p-3 p-md-5 fs-4 fw-light">
      Oh! And I love traveling and clicking pictures. Here are some ..
    </p>
    <div class="container-fluid p-0">
      <div v-for="(row, i) in images" :key="i" class="row no-gutters">
        <template v-for="(col, j) in row" :key="`${i}${j}`">
          <div class="col-md-6">
            <div class="row no-gutters">
              <div
                v-for="(img, k) in col"
                :key="`${i}${j}${k}`"
                class="col p-3 text-center"
              >
                <img
                  :ref="setImgRef"
                  :src="require(`../assets/images/ph/${img}.jpg`)"
                  :data-src="require(`../assets/images/${img}.jpg`)"
                  alt="A picture by Shubham Mankar"
                  class="w-100 rounded-3 photo"
                />
              </div>
            </div>
          </div>
        </template>
      </div>
    </div>
    <p class="fw-light mt-5">
      <a
        href="https://www.instagram.com/themrshubh"
        class="fs-4 text-decoration-none text-danger"
        target="_blank"
      >
        @themrshubh
      </a>
      on Instagram
    </p>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        imgRefs: [],
        images: [
          [
            ['manali', 'cat'],
            ['ocean', 'irish'],
          ],
          [
            ['concert', 'meridian'],
            ['hyderabad', 'amby'],
          ],
        ],
      }
    },

    mounted() {
      let observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) return
          const img = entry.target
          const url = img.getAttribute('data-src')
          img.src = url
          observer.unobserve(img)
        })
      }, {})
      this.imgRefs.forEach((img) => {
        observer.observe(img)
      })
    },

    methods: {
      setImgRef(el) {
        if (el) {
          this.imgRefs.push(el)
        }
      },
    },
  }
</script>

<style scoped>
  .photo {
    max-height: 300px;
    max-width: 300px;
    transition: transform 0.3s ease;
  }

  .photo:hover {
    transform: scale(1.03);
  }
</style>
