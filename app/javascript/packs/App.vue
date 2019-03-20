<template>
  <div id="app">
    <MyHeader/>
    <ToDoList/>
  </div>
</template>

<script>
import MyHeader from './components/MyHeader'
import ToDoList from './components/ToDoList'

export default {
  name: 'app',
  components: {
    MyHeader,
    ToDoList
  },
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  font-size: 20px;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #000000;
  margin-top: 0px;
}
</style>
