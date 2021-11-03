<template>
  <div id="home">
    <div class="logoBox">
      <div class="logo"><Logo/> </div>
      <div id="name">Fahim Gharsa</div>
    </div>
    <div class="intro">
      <h1 class="intro-name">
      <v-typical
    class="blink"
    :steps="['Hi there', 500, 'Hi there, I&rsquo;m Fahim', 1000]"
    :loop="1"
    :wrapper="'intro-name'"
    ></v-typical>
      <br>
      I&apos;m Software engineering student<br>
      from Paris, France.</h1>
      <h1 class="intro-desc">Currently doing fullstack web development and web design</h1>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import Logo from '@/assets/logoF.vue'
import VTypical from 'vue-typical';

export default {
  name: 'Home',
  components: {
    Logo,
    VTypical
  },
}
</script>

<style lang="scss">

@import url('https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c&display=swap');

.intro{
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding-left: 15%;
  padding-top: 10%;
}
.logoBox{
  font-weight: bold;
  font-size: 20px;
  display: inline-flex;
  align-items: center;
  height: 30px;
  line-height: 20px;
  padding-top: 20px;
  padding-left: 14%;
  .logo {
    transition: 200ms ease;
    padding-right: 5px;
  }
  &:hover .logo {
    transform: rotate(-20deg);
  }
}
#name{
  font-family: 'M PLUS Rounded 1c', sans-serif;
  font-weight: bold;
}

.intro-name{
  font-size: 36px;
}
.blink::after {
  content: '|';
  color: var(--text-secondary-color);
  animation: blink 1s infinite step-start;
}

@keyframes blink {
  50% {
    opacity: 0;
  }
}
.intro-desc{
  margin: 0;
  font-size: 18px;
}
@media only screen and (max-width: 600px) {
  #home{
  align-items: center;
  padding: 0;
  }
  .logo {
    display: none;
  }
  .intro-name{
  text-align: center;
  font-size: 22px;
  }
.intro-desc{
  text-align: center;
  font-size: 12px;
  }
}
</style>
