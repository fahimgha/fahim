<template>
  <div id="navbar">
    <div class="nav">
        <ul>
          <li>
            <a href="#Home" >/Home</a>
          </li>
          <li>
            <a href="#About" >/About</a>
          </li>
          <li>
            <a href="#Projects" >/Projects</a>
          </li>
          <li>
            <a href="#Contact" >/Contact</a>
          </li>
        </ul>
      </div>
  </div>
</template>

<script>
export default {
  name: 'Navbar',

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.nav {  
  display: flex;  
  flex-direction: column;
  align-items: flex-end;
  position: fixed;
  right: 0;
  padding-right: 3%;
  bottom: 40%; //test avec 10%
}
a {
  display: flex;
  flex-direction: column;
  text-align: right;
  letter-spacing: 0em;
  line-height: 1.6em;
  font-size: 19px;
  padding: 0.2em;
  font-family: 'Quicksand', sans-serif;
  font-weight: bold;
  text-decoration: none !important;
  color: var(--text-secondary-color);
}
a:hover{
  color: var(--text-primary-color);
}
li{
  list-style: none;
}

</style>
