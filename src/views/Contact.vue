<template>
  <div id="contact">
    <div class="contact-section">
      <h1 class="section-title">/Contact Me</h1>
      <h2 class="end-text">Thanks for scrolling all the way here!</h2>
    </div>
    <div class="end">
      <div class="img">
        <img src="../assets/me.png" alt="">
      </div>
      <div class="boxcontact">
          <EmailIcon
        width="210"
        height="210"/>
        <h2 class="email">fahimgha@protonmail.com</h2>
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
  padding-top: 5%;
}
.contact-section{
  padding-left: 10%;
}
.end {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-evenly;
  padding:unset;
}
.boxcontact{
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}
.end-text{
  font-family: Quicksand;
  font-style: normal;
  font-weight: normal;
  font-size: 20px;
  line-height: 25px;
}
.img{
  margin:13px;
}
.email{
  margin: 0;
}
a{
  color: var(--text-secondary-color);
}
a:hover{
  color: var(--text-primary-color);
}
@media only screen and (max-width: 600px) {
  #contact{
    padding-right: 40px;
    padding-left: 40px;
    align-items: center;
  }
  .contact-section{
    padding: 0;
  }
  .section-title{
  font-size: 25px;
  }
}
</style>
