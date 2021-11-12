<template>
  <div id="study">
    <div class="section-header">
      <h1 class="section-title">Study</h1>
    </div>
    <ul class="timeline">
      <li>
        <p class="timeline-date">2019 - 2021</p>
        <div class="timeline-content">
          <h3>University of Paris</h3>
          <p>University technology diploma in Computer Science.</p>
        </div>
      </li>
      <li>
        <p class="timeline-date">2021 - 2022</p>
        <div class="timeline-content">
          <h3>University of Paris</h3>
          <p>Professional license in software engineering, ERP.</p>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
$prim: #ffc56e;

#study {
  padding-left: 15%;
}
.timeline {
  list-style: none;
}
.timeline > li {
  margin-bottom: 60px;
}

/* for Desktop */
@media (min-width: 640px) {
  .timeline > li {
    overflow: hidden;
    margin: 0;
    position: relative;
  }
  .timeline-date {
    width: 110px;
    float: left;
    margin-top: 20px;
  }
  .timeline-content {
    width: 75%;
    float: left;
    border-left: 3px #e5e5d1 solid;
    padding-left: 30px;
  }
  .timeline-content:before {
    content: "";
    width: 12px;
    height: 12px;
    background: $prim;
    position: absolute;
    left: 106px;
    top: 24px;
    border-radius: 100%;
  }
}
</style>
