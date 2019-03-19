<template>
  <div style="background-color: #b6b6b6;">
    <b-navbar style="background-color: #b6b6b6;">
      <b-navbar-brand href="#">
        <img
          alt="Fractal logo"
          src="~fractal_logo.svg"
          width="34px"
          height="34px"
          style="display : inline"
        >
        Fractal
      </b-navbar-brand>

      <!-- <b-navbar-toggle
        data-toggle='collapse'
        data-target='#navbarSupportedContent'
        aria-controls='navbarSupportedContent'
        aria-expanded='false'
        aria-label='Toggle navigation'
      >
        <span class='navbar-toggler-icon'></span>
      </b-navbar-toggle>-->
      <b-nav-dropdown text="Menu">
        <b-dropdown-item href="#">Top</b-dropdown-item>
        <b-dropdown-item href="#">About</b-dropdown-item>
        <b-dropdown-divider/>
        <b-dropdown-item href="#">Content</b-dropdown-item>
      </b-nav-dropdown>
    </b-navbar>
  </div>
</template>

<style scoped>
.navbar-brand {
  font-size: 32px;
  font-family: "TsukuARdGothic-Regular", sans-serif;
}
</style>
