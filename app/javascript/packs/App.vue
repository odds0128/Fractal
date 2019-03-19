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
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 0px;
}
</style>
