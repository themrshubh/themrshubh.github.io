<template>
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
                :src="require(`../assets/images/ph/${img}.png`)"
                :data-src="require(`../assets/images/${img}.png`)"
                alt="A picture by Shubham Mankar"
                class="w-100 rounded-3 photo"
              />
            </div>
          </div>
        </div>
      </template>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        imgRefs: [],
        images: [
          [
            ['manali', 'gokart'],
            ['ocean', 'hyderabad'],
          ],
          [['concert', 'meridian']],
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
  }
</style>
