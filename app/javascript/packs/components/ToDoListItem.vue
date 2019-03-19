<template>
    <li>
        {{ todo.text }}
        <b-button variant="light" size=sm @click="$emit('remove', todo.id)">
            &times;
        </b-button>
    </li>
</template>

<script>
export default {
    props: {
        todo: {
            type : Object,
            required: true
        }
    }
}
</script>

<style scoped>
li {
    padding : 10px 0px 0px 0px
}
</style>
