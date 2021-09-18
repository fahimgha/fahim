<template>
  <div id="contact">
    <div class="endfirst">
      <h1 class="contactme">/Contact Me</h1>
      <h2 class="text">Thanks for scrolling all the way here!</h2>
    </div>
    <div class="end">
      <div class="img">
        <img src="../assets/me.png" alt="">
      </div>
      <div class="boxcontact">
          <EmailIcon
        width="230"
        height="230"/>
        <h2>fahimgha@protonmail.com</h2>
        <a>Telecharger mon CV (PDF)</a><br>
        <div class="logocontact">        
          <a href="https://github.com/fahimgha"><GithubIcon
        width="70"
        height="70"/></a>
          <a href="https://www.linkedin.com/in/fahim-gharsa/"> 
          <LinkedinIcon
          width="70"
          height="70"/></a></div>

      </div>
    </div> 
  </div>
</template>

<script>
import EmailIcon from '@/assets/logos/Email.vue'
import GithubIcon from '@/assets/logos/Github.vue'
import LinkedinIcon from '@/assets/logos/Linkedin.vue'



export default {
  name: 'Contact',
  components: {
    EmailIcon,
    GithubIcon,
    LinkedinIcon
  }
}
</script>

<style lang="scss">

#contact{
  display: flex;
  flex-direction: column;
  margin-top: 2%;
}
.endfirst{
  margin-left: 10%;
}
.end {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-evenly;
}
.contactme{
  color: var(--text-secondary-color);
  font-size: 45px;
}
.boxcontact{
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
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
  margin:13px;
}
a{
  color: var(--text-secondary-color);
}
a:hover{
  color: var(--text-primary-color);
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
