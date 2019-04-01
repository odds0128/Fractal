<template>
    <li class='custom-control custom-checkbox'>
        <input type='checkbox' class='custom-control-input' :id='item.id'>
        <label class='custom-control-label' :for='item.id'>{{ item.name }}</label>
        <b-button variant='light' size=sm @click="$emit('addChild', item.id)">
            Add child
        </b-button>
    </li>
</template>

<script>
export default {
    props: {
        item: {
            type : Object,
            required: true
        }
    }
}
</script>

<style scoped>
li {
    padding : 15px 0px 0px 0px;
    margin-right: auto;
}

button {
    font-size : 16px;
    padding : 0 6.5px;
    border-color: #aaaaaa;
}

label, input[type='checkbox'] {
    cursor: pointer;
}

.custom-control-label::before, .custom-control-label::after {
    top: 0.7rem;
    -ms-transform: scale(1.2, 1.2);
    -webkit-transform: scale(1.2, 1.2);
    transform: scale(1.2, 1.2);
}
</style>
