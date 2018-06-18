import Vue from 'vue/dist/vue.esm.js'
var app = new Vue({
  el: '#todos',
  data: {
    title: "Welcome to Vue.js",
    fontStyle: {
        fontSize: "20px",
    },
    todo: "",
    todos: ["a", "b"]
  },
  methods: {
    addTodo: function() {
        this.todos.push({
        id: this.todos.length,
        name: this.todo,
        doing: false
      })
      this.todo = ""
    },
    begin: function(todo){
        todo.doing = !todo.doing;
    }
  }
})