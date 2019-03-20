<template>
  <b-button class='wave' size=lg @click="$emit('click')">Add Item</b-button>
</template>

<script>
export default {
}
</script>

<style scoped>
  button {
    margin-bottom: 4px;
    font-size: 16px;
    padding: 4px
  }
</style>
