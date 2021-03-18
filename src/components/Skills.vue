<template>
  <div class="text-light text-center">
    <h2 class="py-2">
      Skills
    </h2>
    <ul class="p-0 my-5 list-unstyled">
      <li v-for="(icon, i) in icons" :key="i" class="d-inline-block px-2 py-3">
        <img
          :ref="setIconRef"
          src="../assets/images/ph/common.png"
          :data-src="require(`../assets/icons/${icon.url}.svg`)"
          :alt="icon.name"
          :title="icon.name"
          class="tech-icon"
        />
      </li>
    </ul>
    <div class="p-3 p-md-5 fw-light fs-4">
      These are a few technologies that I have worked with. I look forward to
      learning and adding more to this list very soon.
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        iconRefs: [],
        icons: [
          { name: 'Javascript', url: 'js' },
          { name: 'Angular', url: 'angular' },
          { name: 'Firebase', url: 'firebase' },
          { name: 'Git', url: 'git' },
          { name: 'Golang', url: 'go' },
          { name: 'HTML', url: 'html' },
          { name: 'CSS', url: 'css' },
          { name: 'Python', url: 'python' },
          { name: 'Vuejs', url: 'vue' },
          { name: 'Amazon Web Services', url: 'aws' },
        ],
      }
    },

    mounted() {
      let options = {
        rootMargin: '200px',
      }
      let observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) return
          const img = entry.target
          const url = img.getAttribute('data-src')
          img.src = url
          observer.unobserve(img)
        })
      }, options)
      this.iconRefs.forEach((icon) => {
        observer.observe(icon)
      })
    },

    methods: {
      setIconRef(el) {
        if (el) {
          this.iconRefs.push(el)
        }
      },
    },
  }
</script>

<style scoped>
  .tech-icon {
    height: 64px;
    width: 64px;
  }

  .custom-tooltip {
    position: absolute;
    top: -25px;
    left: 50%;
    transform: translateX(-50%);
    white-space: nowrap;
  }
</style>
