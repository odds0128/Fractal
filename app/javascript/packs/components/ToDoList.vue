<template>
  <div id='body'>

    <ul v-if="items.length">
      <ToDoListItem
        v-for="item in items"
        :key="item.id"
        :item="item"
        @remove="removeitem"
      />
    </ul>
    <p v-else>
      Nothing left in the list. Add a new item in the input above.
    </p>
    <span id='add'>
    <InputField
      v-model="newText"
    />
    <AddItemButton
      @click="addItem"
    />
    </span>
  </div>
</template>

<script>
import axios from 'axios'

import InputField from './InputField'
import ToDoListItem from './ToDoListItem'
import AddItemButton from './AddItemButton'

let nextItemId = 0

export default {
  name: 'itemList',
  components : {
    InputField,
    ToDoListItem,
    AddItemButton
  },
  data () {
    return {
      newText: '',
      items : []
    }             
  },
  mounted : function () {
    this.fetchItems();
  },
  methods : {
    addItem () {
      const trimmedText = this.newText.trim();
      
      console.log('trimmedText' + trimmedText + ', newitem: ' + this.newText )

      if ( trimmedText ) {
        this.items.push({
          id: nextItemId++,
          text: trimmedText
        })
        this.newText = ''
      }
    },
    removeitem ( idToRemove ) {
      this.items = this.items.filter( item => {
        return item.id !== idToRemove
      })
    },
    fetchItems () {
      axios.get('/api/items').then( (response) => {
        for ( let i = 0; i < response.data.items.length; i++ ) {
          this.items.push(response.data.items[i]);
        }
      }, (error) => {
        console.log(error);
      });
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
ul {
  list-style-type: disc;
  padding: 0;
  margin-left: 40px;
}

#add {
  margin-left: 20px;
}

</style>
