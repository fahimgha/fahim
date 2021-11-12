<template>
  <div id="contact">
    <div class="contact-section">
      <h1 class="section-title">/Contact Me</h1>
      <h2 class="end-text">Thanks for scrolling all the way here!</h2>
    </div>
    <div class="end">

      <div class="box-contact">
          <EmailIcon
        width="210"
        height="210"/>
        <h2 class="email">fahimgharsa@protonmail.com</h2>
        <!-- <a href="/fahimgharsa.pdf">Download my resume (PDF)</a> -->
        <div class="logo-contact">        
          <a href="https://github.com/fahimgha"><GithubIcon
        width="70"
        height="70"
        /></a>
          <a href="https://www.linkedin.com/in/fahim-gharsa/"> 
          <LinkedinIcon
          width="70"
          height="70"
          /></a>
        </div>
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

// .logo-contact .iconLinkedin:hover path{
//   fill:#ffffff;
// }
// .logo-contact .iconGithub:hover path{
//   fill:#ffffff;
// }
#contact{
  display: flex;
  flex-direction: column;
  padding-top: 5%;
}
.contact-section{
  padding-left: 15%;
}
.end {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-evenly;
  padding:unset;
}
.box-contact{
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
.email{
  margin-top: 0;
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
