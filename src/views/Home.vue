<template>
  <div id="home">
    <div class="logoBox">
      <div class="logo"><Logo /></div>
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
        <br />
        I&apos;m Software engineering student<br />
        from Paris, France.
      </h1>
      <a class="btn fade-up" :href="`mailto:fahimgharsa@protonmail.com`">
        Get In Touch
      </a>
      <!-- <h1 class="intro-desc">Currently doing fullstack web development and web design</h1> -->
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import Logo from "@/assets/logoF.vue";
import VTypical from "vue-typical";

export default {
  name: "Home",
  components: {
    Logo,
    VTypical,
  },
};
</script>

<style lang="scss">
@import url("https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c&display=swap");
$prim: #ffc56e;

.intro {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding-left: 15%;
  padding-top: 10%;
}
.logoBox {
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
#name {
  font-family: "M PLUS Rounded 1c", sans-serif;
  font-weight: bold;
}
.btn {
  display: inline-block;
  text-decoration: none;
  margin-top: 10px;
  padding: 10px 20px;
  font-weight: 400;
  font-size: 16px;
  border-radius: 10px;
  background-color: $prim;
  color: black;
  animation-delay: 1s;
  transition: all 0.15s;
  cursor: pointer;

  &:hover {
    background-color: darken($prim, 10%);
  }
}
.intro-name {
  font-size: 36px;
}
.blink::after {
  content: "|";
  color: var(--text-secondary-color);
  animation: blink 1s infinite step-start;
}
@keyframes blink {
  50% {
    opacity: 0;
  }
}
.intro-desc {
  margin: 0;
  font-size: 18px;
}

@media only screen and (max-width: 600px) {
  #home {
    padding-right: 40px;
    padding-left: 40px;
    align-items: center;
  }
  .logoBox {
    display: none;
  }
  .btn {
    display: none;
  }
  .intro {
    padding: 0;
  }
  .intro-name {
    text-align: center;
    font-size: 22px;
  }
  .intro-desc {
    text-align: center;
    font-size: 12px;
  }
}
</style>
