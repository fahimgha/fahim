<template>
  <div id="web">
    <div class="section-header">
      <h1 class="section-title">On the web</h1>
    </div>
    <div class="web">
      <div class="link">
        <a href="https://github.com/fahimgha">
          <GithubIcon width="30" height="30" iconColor="#FFC56E" />@fahimgha</a
        >
      </div>
      <div class="link">
        <a href="https://www.linkedin.com/in/fahim-gharsa/">
          <LinkedinIcon
            width="30"
            height="30"
            iconColor="#FFC56E"
          />@fahimgharsa</a
        >
      </div>

      <div class="link">
        <a :href="`mailto:fahimgharsa@protonmail.com`">
          <EmailIcon width="30" height="30" iconColor="#FFC56E" />
          Mail</a
        >
      </div>
    </div>
  </div>
</template>

<script>
import EmailIcon from "@/assets/logos/Email.vue";
import GithubIcon from "@/assets/logos/Github.vue";
import LinkedinIcon from "@/assets/logos/Linkedin.vue";

export default {
  name: "Web",
  components: {
    EmailIcon,
    GithubIcon,
    LinkedinIcon,
  },
};
</script>

<style lang="scss">
$prim: #ffc56e;

#web {
  padding-left: 15%;
}

.link {
  display: table;
  //width: 10%;
  //max-width: 150px;
  flex-direction: column;
  padding: 10px 20px;
  font-weight: 400;
  font-weight: bold;
  border-radius: 10px;
  animation-delay: 1s;
  transition: all 0.15s;
  cursor: pointer;

  a {
    display: flex;
    //flex-wrap: wrap;
    text-decoration: none;
    align-items: center;
    color: $prim;
    text-indent: 1em;
    &:hover {
      text-decoration: underline;
      text-decoration-color: #848582;
    }
  }
  &:hover {
    background-color: lighten($prim, 22%);
  }
}
</style>
