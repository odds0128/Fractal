<template>
  <input type="text" placeholder="New todo" :value="value"  @input="$emit('input', $event.target.value)">
</template>

<script>
export default {
  props: {
    value: {
      type: String,
      default: '',
    }
  },
}
</script>
