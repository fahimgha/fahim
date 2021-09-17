<template>
  <div id="contact">
    <h1 class="contactme">/Contact Me</h1>
    <div class="text">Thanks for scrolling all the way here!</div> 
    <div class="img">
      <img src="../assets/me.png" alt="">
        <!--position: absolute;
width: 329px;
height: 429px;
left: 164px;
top: 2325px;  -->
    </div>
  </div>
</template>

<script>

export default {
  name: 'Contact',
  components: {
  }
}
</script>

<style lang="scss">

#contact{
  margin: 5% 27% 0 10%;
}
.contactme{
  color: var(--text-secondary-color);
  font-size: 45px;
}
.text{
  font-family: Quicksand;
  font-style: normal;
  font-weight: bold;
  font-size: 20px;
  line-height: 25px;
  color: #FFC56E;
}
.img{


  margin: 22px 318px 10px 60px;
}
@media only screen and (max-width: 600px) {
  #contact{
    padding-top: 15px;
    margin: 0 50px;
    align-items: center;
  }
  .contactme{
  font-size: 25px;
  }
}

</style>
