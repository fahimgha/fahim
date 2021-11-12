<template>
  <div id="projects">
    <div class="section-header">
      <h1 class="section-title">Projects</h1>
    </div>
    <div class="wrapper">
      <div :key="post.id" class="card" v-for="post in filteredList">
        <div class="header-card">
          <div class="box-project">
            <h2 class="project-name">{{ post.title }}</h2>
          </div>
          <div class="link2">
            <a :href="post.repo"
              ><GithubIcon width="30" height="40" iconColor="#ffffff"
            /></a>
            <a v-if="post.link.length" :href="post.link"
              ><LinkIcon width="20" height="40" iconColor="#ffffff"
            /></a>
          </div>
        </div>
        <h3 class="tools">{{ post.tools }}</h3>
        <h2 class="descproj">{{ post.desc }}</h2>
      </div>
    </div>
  </div>
</template>

<script>
import GithubIcon from "@/assets/logos/Github.vue";
import LinkIcon from "@/assets/logos/Link.vue";
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
    "Kids Coding",
    "https://github.com/Kds-Coding/Kds-Coding-repo",
    "https://kids-coding-7790c.web.app/",
    "VueJs / HTML&CSS / Bootstrap / Firebase",
    "A learning platform for children to learn about programming. A website giving both the theoretical bases of algorithms and web programming."
  ),
  new Post(
    "Never Alone",
    "https://github.com/fahimgha/AppMob-NeverAlone",
    "",
    "Java / AndroidStudio / Firebase",
    "Application allowing to locate his friends in real time with his phone. It is a real-time GPS tracking application using the Google Maps API. "
  ),
  new Post(
    "Novelyo",
    "https://github.com/QuentinFrc/Novelyo",
    "",
    "Shopify / NodeJs / Javascript / HTML/CSS / Postgresql",
    "Creation of a digital marketing agency allowing self-training on the functioning of the web marketing, project management and business creation."
  ),
];
export default {
  name: "Projects",
  el: "#projects",
  components: {
    GithubIcon,
    LinkIcon,
  },
  data() {
    return {
      keyword: "",
      posts: postList,
      styles: {
        backgroundColor: "red",
      },
    };
  },
  methods: {
    toggleOnOff() {
      this.onOff = !this.onOff;
    },
  },
  computed: {
    filteredList() {
      return this.posts.filter((post) =>
        post.title.toLowerCase().includes(this.keyword.toLowerCase())
      );
    },
  },
};
</script>

<style lang="scss">
#projects {
  padding-left: 15%;
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
  .header-card {
    display: flex;
    justify-content: space-around;
    align-items: center;
  }
  .link2 {
    display: flex;
    justify-content: flex-end;
  }
  .card {
    width: 350px;
    height: 270px;
    border: 2px solid #ffc56e;
    box-sizing: border-box;
    border-radius: 10px;
    margin: 12px;
    transition: 0.15s all ease-in-out;
    &:hover {
      transform: scale(1.1);
    }
    .box-project {
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;
      padding: 0 10px;
      height: 43px;
      border: 2px solid #ffc56e;
      box-sizing: border-box;
      border-radius: 10px;
      .project-name {
        margin: 0%;
        font-size: 20px;
        text-indent: 0;
      }
    }
    .tools {
      display: flex;
      justify-content: center;
      text-indent: 1em;
      font-size: 12px;
    }
    .descproj {
      display: flex;
      justify-content: center;
      padding: 0 20px;
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
  #projects {
    padding-right: 40px;
    padding-left: 40px;
  }
  .wrapper {
    align-items: center;
    justify-content: center;
  }
  .section-title {
    font-size: 25px;
  }
}
</style>
