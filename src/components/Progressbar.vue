<template> 
    <div class="progress-bar">
    <div
      class="filled-bar"
      :style="{ transform: `translate3d(-${(1 - value) * 100}%, 0, 0)` }"
    ><span class="text">
      {{ percentageText }}
    </span></div>
  </div>
</template>

<script>
export default {
    name: 'progressbar',
    props: {
    value: {
      type: Number,
      default: 0.3
    }
  },
  computed: {
    percentageText () {
      return `${Math.round(this.value * 100)}%`
    }
  }
}
</script>

<style lang="scss">

::-webkit-scrollbar {
    display: block;
}
.progress-bar {
  
  position: relative;
  overflow: hidden;
  border-radius: 3px 3px 0 0;
}
.text {
  display: block;
  text-align: center;
  font-size: 20px;
  position: absolute;
  top: 2px;
  right: 0px;
  z-index: 4;
}
.filled-bar {
  position: fixed;
  top: 0;
  height: 3px;
  width: 100%;
  transform: translate3d(-100%, 0, 0);
  background: var(--text-secondary-color);
  z-index: 2;
  text-align: right;
}
</style>