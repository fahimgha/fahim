<template>
  <div id="about">
    <h1 class="section-title">/About Me</h1>
    <div class="box-about">
      <div class="box-descabt">
      <h2 class="about-desc ">I'm a Software engineering student at IUT de Paris. I'm interested in Web developpement and Web design. I like design and code beautifully simple things. 
        I did intership as a Web Developer in may 2021, and ever since, it has been a wonderful adventure for me.
        If I’m not doing anything coding-related, I enjoy walking, watching anime or spending time with my family.
        I'm constantly in the process of learning. Over the past two years, I've worked hard to enhance my skills, using the following tools :
      </h2>

      </div>
      <div class="box-image"><img src="../assets/fahimm.jpeg" alt="Image Profile"></div>
      
      
    </div>
          <h3>• Java • Javascript • PHP • Vuejs • HTML • CSS • Firebase • Git/Github</h3>
  </div>
</template>

<script>

export default {
  name: 'About',
  components: {
  },
  fadeInElements: [],

  mounted() { 
    this.fadeInElements = Array.from(document.getElementsByClassName('fade-test'))
    document.addEventListener('scroll', this.handleScroll)
  },
		
  unmounted() {
     document.removeEventListener('scroll', this.handleScroll)
  },
  methods:{
    handleScroll() {
    for (let i = 0; i < this.fadeInElements.length; i++) {
        const elem = this.fadeInElements[i]
        if (this.isElemVisible(elem)) {
        elem.style.opacity = '1'
        elem.style.transform = 'scale(1)'
        this.fadeInElements.splice(i, 1) // Pour jouer l'animation seulement une fois
    }
    }
    },
    isElemVisible(el) {
    const rect = el.getBoundingClientRect()
    const elemTop = rect.top + 200 // buffer
    const elemBottom = rect.bottom
    return elemTop < window.innerHeight && elemBottom >= 0 
    },
  }
}
</script>

<style lang="scss">
.fade-test {
	opacity: 0;
	transition: 0.3s all ease-out;
	transform: scale(0.8);

}
#about{
  padding-left: 15%;
  padding-top: 7%;
  padding-right: 25%;
}
.section-title{
  color: var(--text-secondary-color);
  font-size: 25px;
}
.about-desc{
  text-align: justify;
  padding-right:7%;
}
.box-about {
  display: flex;
  align-items: center;
}
img{
  border-color: whiteAlpha;
  border-width: 2px;
  border-style: solid;
  max-width: 150px;
  border-radius:50%;
  display: inline-block;
}
@media only screen and (max-width: 600px) {
  #about{
    padding-right: 40px;
    padding-left: 40px;
    align-items: center;
  }
  .section-title{
  font-size: 25px;
  }
  .about-desc{
  font-size: 18px;
  }
  h3{
    margin:0;
    font-size: 15px;
  }
}

</style>
