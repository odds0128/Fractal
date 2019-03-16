<template>
  <div>
    <InputField
      v-model="newTodoText"
    />
    <AddItemButton
      @click="addTodo"
    />
    <ul v-if="todos.length">
      <ToDoListItem
        v-for="todo in todos"
        :key="todo.id"
        :todo="todo"
        @remove="removeTodo"
      />
    </ul>
    <p v-else>
      Nothing left in the list. Add a new todo in the input above.
    </p>
  </div>
</template>

<script>
import InputField from './InputField'
import ToDoListItem from './ToDoListItem'
import AddItemButton from './AddItemButton'

let nextTodoId = 0

export default {
  name: 'ToDoList',
  components : {
    InputField,
    ToDoListItem,
    AddItemButton
  },
  data () {
    return {
      newTodoText: '',
      todos : [
        {
					id: nextTodoId++,
					text: 'Learn Vue'
				},
				{
					id: nextTodoId++,
					text: 'Learn about single-file components'
				},
				{
					id: nextTodoId++,
					text: 'Fall in love'
				}
      ]
    }             
  },
  methods : {
    addTodo () {
      const trimmedText = this.newTodoText.trim();
      
      console.log('trimmedText' + trimmedText + ', newTodo: ' + this.newTodoText )

      if ( trimmedText ) {
        this.todos.push({
          id: nextTodoId++,
          text: trimmedText
        })
        this.newTodoText = ''
      }
    },
    removeTodo ( idToRemove ) {
      this.todos = this.todos.filter( todo => {
        return todo.id !== idToRemove
      })
    }
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: disc;
  padding: 0;
}
a {
  color: #42b983;
}
</style>
