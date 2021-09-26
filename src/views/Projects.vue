<template>
<div id="projects">
  
      <h1 data-aos="fade-up" class="section-title">/My Projects</h1>
        <div data-aos="fade-left" data-aos-delay="300"  class="wrapper">
          <div   :key="post.id" class="card" v-for="post in filteredList">
            <div class="header-card">
            <div class="box">
              <h2 class="project-name">{{ post.title }}</h2></div>
              <div class="link">
                <a :href="post.repo"><GithubIcon
                width="40"
                height="50"
                iconColor='#ffffff'/></a>
                <a v-if="post.link.length" :href="post.link"><LinkIcon
                width="30"
                height="50"
                iconColor='#ffffff'/></a></div>
                </div>
            <h3 class="tools">{{ post.tools }}</h3>
            <p class="descproj">{{ post.desc }}</p>
          </div>
        </div>
    
    
</div>

</template>

<script>
import GithubIcon from '@/assets/logos/Github.vue'
import LinkIcon from '@/assets/logos/Link.vue'
class Post {
  constructor(title, repo, link, tools, desc) {
    this.title = title;
    this.repo = repo;
    this.link = link;
    this.tools = tools;
    this.desc = desc;
  }
}

const postList = [
      new Post(
        'Kids Coding',
        'https://github.com/Kds-Coding/Kds-Coding-repo',
        'https://kids-coding-7790c.web.app/',
        'VueJs / HTML&CSS / Bootstrap / Firebase', 
        'A learning platform for children to learn about programming. A website giving both the theoretical bases of algorithms and web programming.'
      ),
      new Post(
        'Never Alone', 
        'https://github.com/fahimgha/AppMob-NeverAlone',
        '',
        'Java / AndroidStudio / Firebase', 
        'Application allowing to locate his friends in real time with his phone. It is a real-time GPS tracking application using the Google Maps API. '
      ),
];
export default {
  name: 'Projects',
  el: '#projects',
  components:{
    GithubIcon,
    LinkIcon
  },
  data() { 
  return {
    keyword: '',
    posts: postList,
    styles: {
      backgroundColor: 'red'
    }
  }
    
  },
  methods: { 
    toggleOnOff() {
      this.onOff = !this.onOff;
    },
  },
  computed: {
    filteredList() {
      return this.posts.filter((post) => post.title.toLowerCase().includes(this.keyword.toLowerCase()));
    }
  }
}
</script>

<style lang="scss">

#projects {
  padding-left: 10%;
  padding-top: 5%;
}


div#projects {
  display: flex;
  flex-direction: column;
  .wrapper {
    display: flex;
    max-width: 750px;
    flex-wrap: wrap;
    padding-top: 0px;
  }
.header-card{
  display: flex;
  justify-content: space-between;
}
.link{
  display: flex;
  justify-content: flex-end;
}
  .card {
    width: 350px;
    height: 250px;
    border: 2px solid #FFC56E;
    box-sizing: border-box;
    border-radius: 10px;
    margin: 12px;
    transition: .15s all ease-in-out;
    &:hover { 
      transform: scale(1.1);
    }
    .box{
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;
      margin-top: 17px;
      margin-left: 22px;
      width: 162px;
      height: 43px;
      border: 2px solid #FFC56E;
      box-sizing: border-box;
      border-radius: 10px;
      .project-name{
        color: white;
        font-family: 'Quicksand', sans-serif;
        font-size: 25px;
        line-height: 31px;
        font-weight: bold;
        font-style: normal;
      }
    }
    .tools{
      margin-top: 14px;
      margin-left: 25px;
      color: white;
      font-family: 'Quicksand', sans-serif;
      font-style: normal;
      font-weight: bold;
      font-size: 11px;
      line-height: 13px;
    }
    .descproj{
      margin: 8px 20px 0 25px;
      color: white;
      font-family: 'Quicksand', sans-serif;
      font-style: normal;
      font-size: 18px;
      line-height: 24px;
    }
    a {
      text-decoration: none;
      padding: 12px;
      color: #ffffff;
      font-size: 24px;
      display: flex;
      flex-direction: column;
      align-items: center;
      img {
        height: 100px;
      }
      small {
        font-size: 10px;
        padding: 4px;
      }
    }
  }
}
@media only screen and (max-width: 600px) {
  #projects{
    padding-right: 40px;
    padding-left: 40px;
    
  }
  .wrapper{
    align-items: center;
    justify-content: center;
  }
  .section-title{
  font-size: 25px;
  }
}
</style>