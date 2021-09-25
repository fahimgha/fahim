<template>
  <div id="about">
    <h1 data-aos="fade-up" class="section-title">/About Me</h1>
    <h1 data-aos="fade-up" data-aos-delay="100" class="about-desc ">My name is Fahim GHARSA. I studying Computer Science at Paris.<br> I am did 2 months internship as an trainee web developper.
    I'm interested in Web developpement and Web design. I like design and code beautifully simple things. I'm constantly in the process of learning. Over the past two years, I've worked hard to enhance my skills, using the following tools :<br>
    </h1>
    <h3 data-aos="fade-up" data-aos-delay="100">NodeJs, Java, PHP, Vuejs, Javascript, HTML & CSS</h3>
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
  padding-left: 10%;
  padding-top: 7%;
  padding-right: 27%;
}
.section-title{
  color: var(--text-secondary-color);
  font-size: 45px;
}
.about-desc{
  font-size: 19px;
  line-height: 1.7em;
  font-weight: 400;
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
