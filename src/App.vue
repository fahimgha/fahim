<template>
  <div id="app" >
    <Navbar/>
    
    <Progressbar :value="progress"></Progressbar>
    <div
      class="text-section"
      ref="text"
      @scroll="onScroll"
    >
      <Home/>
      <About/>
      <Projects/>
      <Contact/>
      <Credits/> 
      </div>
    
  </div>
</template>

<script>
import Progressbar from '@/components/Progressbar'
import Home from '@/views/Home'
import About from '@/views/About'
import Navbar from '@/components/Navbar'
import Projects from '@/views/Projects'
import Contact from '@/views/Contact'
import Credits from '@/views/Credits'

export default {
  name: 'App',
  components: {
    Progressbar,
    Navbar,
    Home,
    About,
    Projects,
    Contact, 
    Credits
  },
  data () {
    return {
      progress: 0
    }
  },

  methods: {
    onScroll () {
      const progress = this.$refs.text.scrollTop / (this.$refs.text.scrollHeight - this.$refs.text.clientHeight)
      if (progress > 1) {
        this.progress = 1
      } else if (progress < 0) {
        this.progress = 0
      } else {
        this.progress = progress
      }
    }
  }
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;500&display=swap');

:root {
  --background-color-primary:#191919;
  --background-color-secondary: #848582;
  --text-primary-color: #ffffff;
  --text-secondary-color:#FFC56E;
  --element-size: 4rem;
}

html,
body {
  background: var(--background-color-primary);
  padding: 0;
  margin: 0;
}
#app { 
  font-family: 'Quicksand', sans-serif;
  color:var(--text-primary-color);
  height: 100vh;
  display: flex;
  flex-direction: column;
  box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
  // text-align: center;
}

h1{
  font-size: 40pt;
}
#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
.text-section {
  height: 100%;
  max-height: 100%;
  padding: 0 10px 10px;
  overflow: scroll;
  overflow-x: hidden;
  -webkit-overflow-scrolling: touch;
}
</style>
