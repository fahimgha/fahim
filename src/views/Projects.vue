<template>
<div id="projects">
  <div class="Projects">
      <h1 class="prj">/My Projects</h1>
        <div class="wrapper">
          <div :key="post.id" class="card" v-for="post in filteredList">
            <div class="boxname">
              <h2 class="nameproject">{{ post.title }}</h2></div>
            <h3 class="tools">{{ post.tools }}</h3>
            <p class="descproj">{{ post.desc }}</p>
          </div>
        </div>
    </div>
</div>

</template>
<script>
class Post {
  constructor(title, tools, desc) {
    this.title = title;
    this.tools = tools;
    this.desc = desc;
  }
}

const postList = [
      new Post(
        'Kids Coding', 
        'VueJs / HTML&CSS / Bootstrap / Firebase', 
        'A learning platform for children to learn to learn about programming. A website giving both the theoretical bases of of algorithms and web programming.'
      ),
      new Post(
        'Never Alone', 
        'Java / AndroidStudio / Firebase', 
        'Application allowing to locate his friends in real time with his phone.it is a real-time GPS tracking application using the Google Maps API. '
      ),
];
export default {
  name: 'Projects',
  el: '#projects',
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


.Projects {
  padding: 3% 27% 0 10%;
}
.prj{
  color: var(--text-secondary-color);
  font-size: 45px;
}
body {
  background-color: #21232f;
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

  .card {
    width: 350px;
    height: 250px;
    border: 2px solid #FFC56E;
    box-sizing: border-box;
    border-radius: 10px;
    //max-width: 350px;
    margin: 12px;
    transition: .15s all ease-in-out;
    &:hover { 
      transform: scale(1.1);
    }
    .boxname{
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
      .nameproject{
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

</style>