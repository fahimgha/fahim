<template>
  <div class="about">
    <h1 class="aboutme">/About Me</h1>
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
  }
}
</script>

<style lang="scss">

.about{
  margin: 10% 27% 0 10%;
}
.aboutme{
  color: var(--text-secondary-color);
  font-size: 45px;
}
.descabt{
  font-size: 19px;
  line-height: 1.7em;
  font-weight: 400;
}

@media only screen and (max-width: 600px) {
  .about{
    padding-top: 15px;
    margin: 0 50px;
    align-items: center;
  }
  .aboutme{
  font-size: 25px;
  }
.descabt{
  font-size: 11px;
  }
}

</style>
