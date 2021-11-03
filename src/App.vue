<template>
  <div id="app">
    <Navbar/>
    <!-- <Progressbar :value="progress"></Progressbar>
    <div
      class="text-section"
      ref="text"
      @scroll="onScroll"
    > -->
      <Home></Home>
      <About></About>
      <Projects></Projects>
      <Contact></Contact>
      <Credits/> 
      <!-- </div> -->
    
  </div>
</template>

<script>
// import Progressbar from '@/components/Progressbar'
import Home from '@/views/Home'
import About from '@/views/About'
import Navbar from '@/components/Navbar'
import Projects from '@/views/Projects'
import Contact from '@/views/Contact'
import Credits from '@/views/Credits'

export default {
  name: 'App',
  components: {
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
@import url('https://fonts.googleapis.com/css2?family=NTR&display=swap');

:root {
  //--background-color-primary:#191919;
  --background-color-primary:#202023;
  --background-color-secondary: #848582;
  --text-primary-color: #ffffff;
  --text-secondary-color:#FFC56E;
  --element-size: 4rem;
}
// ::-webkit-scrollbar {
//     display: block;
//     display: none;
// }
html,
body {
  background: var(--background-color-primary);
  padding: 0;
  margin: 0;
}
#app { 
  font-family: 'M PLUS Rounded 1c', sans-serif;
  //font-family: 'Quicksand', sans-serif;
  //font-family: 'NTR', sans-serif;
  color:var(--text-primary-color);
  height: 100vh;
  display: flex;
  flex-direction: column;
  //box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
}

h1{
  font-family: 'M PLUS Rounded 1c', sans-serif;
  font-size: 40pt;
}
h2{
  font-family: -apple-system, BlinkMacSystemFont, 
    "Segoe UI", "Roboto", "Oxygen", 
    "Ubuntu", "Cantarell", "Fira Sans", 
    "Droid Sans", "Helvetica Neue", sans-serif;
  font-size: 18px;
  font-weight: 250;
  line-Height: 150%;
  word-spacing: 2px;
  
  
  

}

// .text-section {
//   width: 100vw;
//   overflow: scroll;
//   -webkit-overflow-scrolling: touch;
// }
</style>
