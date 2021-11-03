<template>
  <div id="navbar">
    <div class="nav" >
        <ul>
          <li>
            <a data-aos="fade-up" @click="(reloadPage())">/Home</a>
          </li>
          <li>
            <a data-aos="fade-up" data-aos-delay="100" v-on:click="scroll(`about`)">/About</a>
          </li>
          <li>
            <a data-aos="fade-up" data-aos-delay="200" v-on:click="scroll(`projects`)">/Projects</a>
          </li>
          <li>
            <a data-aos="fade-up" data-aos-delay="300" v-on:click="scroll(`contact`)">/Contact</a>
          </li>
        </ul>
      </div>

  </div>
</template>

<script>
export default {
  name: 'Navbar',
  methods: {
    scroll(id) {  
      document.getElementById(id).scrollIntoView({
        behavior: "smooth"
      });
    },
    reloadPage(){
    window.location.reload()
  }  
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

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
.nav {  
  display: flex;  
  flex-direction: column;
  align-items: flex-end;
  position: fixed;
  right: 0;
  padding-right: 3%;
  bottom: 10%; //test avec 10%
}
a {
  display: flex;
  flex-direction: column;
  text-align: right;
  letter-spacing: 0em;
  line-height: 1.6em;
  font-size: 16px;
  padding: 0.2em;
  font-family: 'M PLUS Rounded 1c', sans-serif;
  font-weight: bold;
  text-decoration: none !important;
  color: var(--text-secondary-color);
  &.router-link-exact-active{
  color: var(--text-primary-color);
}
}

li{
  list-style: none;
}

@media only screen and (max-width: 600px){

#navbar {
display: none;
} 
}

</style>
