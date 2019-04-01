<template>
  <div>
    <b-navbar class="sticky-top navbar-expand-sm">
      <b-navbar-brand togglable="false" href="#">
        <img
          alt="Fractal logo"
          src="~fractal_logo.svg"
          width="34px"
          height="34px"
          style="display : inline"
        >
        Fractal
      </b-navbar-brand>

        <!-- <b-nav-item-dropdown text="Menu">
          <b-dropdown-item href="#">Top</b-dropdown-item>
          <b-dropdown-item href="#">About</b-dropdown-item>
          <b-dropdown-divider/>
          <b-dropdown-item href="#">Content</b-dropdown-item>
        </b-nav-item-dropdown> -->
    </b-navbar>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  mounted : function () {
    this.fetchUserEmail();
  },
  methods : {
    fetchUserEmail () {
    },
  },
}
</script>

<style scoped>
div {
  background-color: #b6b6b6;
}
li {
  margin-left:auto;
  padding-right: 20px;
}

.navbar-brand {
  font-size: 32px;
  font-family: "TsukuARdGothic-Regular", sans-serif;
  color: black;
}

.b-nav-dropdown {
  list-style-type: none;
  font-size: 16px;
}
</style>
