<template>
  <div id="about" >
    <h1 class="section-title">/About Me</h1>
    <h1 class="descabt">My name is Fahim GHARSA. I studying Computer Science at Paris.<br> I am did 2 months internship as an trainee web developper.
    I'm interested in Web developpement and Web design. I like design and code beautifully simple things and I love what I do. I've started frontend development for over 2 years now. I'm constantly in the process of learning. Over the past two years, I've worked hard to enhance my skills, using the following tools :<br>
    </h1>
    <h3>NodeJs, Java, Vuejs, Javascript, HTML & CSS</h3>
    
  </div>
</template>

<script>

export default {
  name: 'About',
  components: {
  },
  
}
</script>

<style lang="scss">

#about{
  padding-left: 10%;
  padding-top: 7%;
  padding-right: 27%;
}
.section-title{
  color: var(--text-secondary-color);
  font-size: 45px;
}
.descabt{
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
  .descabt{
  font-size: 18px;
  }
  h3{
    margin:0;
    font-size: 15px;
  }
}

</style>
