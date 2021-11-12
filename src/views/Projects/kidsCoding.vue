<template>
  <div id="prj3">
    <div class="section-header">
      <h1 class="section-title">Experience</h1>
    </div>
    <div class="experience">
      <div class="box">
        <div class="box-title">
          COMPANY
        </div>
        <p>Société Generale</p>
      </div>
      <div class="box">
        <div class="box-title">
          ROLE
        </div>
        <p>Web Developer</p>
      </div>
      <div class="box">
        <div class="box-title">
          DATE
        </div>
        <p>Mai 2021 - July 2021</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
$prim: #ffc56e;

.box {
  display: flex;
  margin-bottom: 0.5rem;
  p {
    margin: 0;
  }
}
.box-title {
  display: flex;
  white-space: nowrap;
  vertical-align: middle;
  color: $prim;
  align-items: center;
  font-weight: 700;
  -webkit-padding-start: 0.25rem;
  padding-inline-start: 0.25rem;
  -webkit-padding-end: 0.25rem;
  padding-inline-end: 0.25rem;
  text-transform: uppercase;
  font-size: 0.75rem;
  border-radius: 0.125rem;
  background: rgba(255, 197, 110, 0.16);
  //color: var(--chakra-colors-green-200);
  margin-right: 0.5rem;
  //padding: 1px;
  //border-radius: 5%;
  //background-color: lighten($prim, 10%);
  //background-color: $prim;
}
</style>
