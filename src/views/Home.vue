<template>
  <div id="home">
      <div class="logo"><Logo/></div>
      <h1 class="intro">Hi there, My name is Fahim. <br>
      I'm a Computer Science student <br>
      from Paris, France.</h1>
      <h1 class="intro-desc">Currently doing fullstack web development and web design</h1>
  </div>
</template>

<script>
// @ is an alias to /src
import Logo from '@/assets/logoF.vue'

export default {
  name: 'Home',
  components: {
    Logo,
  }
}
</script>

<style lang="scss">

#home{
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding-left: 10%;
  padding-top: 10%;
}
.intro{
  font-size: 50px;
}
.intro-desc{
  margin: 0;
  font-weight: normal;
  font-size: 22px;
}
@media only screen and (max-width: 600px) {
  #home{
  align-items: center;
  padding: 0;
  }
  .logo {
    display: none;
  }
  .intro{
  text-align: center;
  font-size: 22px;
  }
.intro-desc{
  text-align: center;
  font-size: 12px;
  }
}
</style>
