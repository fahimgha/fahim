<template>
  <div id="app" >
    <Navbar/>
    <Home/>
    <About/>
    <Projects/>
    <Contact/>
    <Credits/>
  </div>
</template>

<script>
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
</style>
