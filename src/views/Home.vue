<template>
  <div class="home">
    <div class="intro">
      <div class="logo"><Logo/></div>
      <h1 class="name">Hi there, My name is Fahim. <br>
      I'm a Computer Science student <br>
      from Paris, France.</h1>
      <h1 class="desc">Currently doing fullstack web development and web design</h1>
    </div>
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

.intro{
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  margin: 12% 20% 0 10%;
}
.name{
  font-size: 50px;
}
.desc{
  font-size: 22px;
}
@media only screen and (max-width: 600px) {
  .logo {
    display: none;
  }
  .intro {
    padding-top: 15px;
    margin: 0;
    align-items: center;
  }
  .name{
  text-align: center;
  font-size: 25px;
  }
.desc{
  text-align: center;
  font-size: 11px;
  }
}
</style>
