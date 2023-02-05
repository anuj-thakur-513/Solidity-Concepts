// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TodoList {
    // declare a struct which groups two data types together
    struct TodoItem {
        string text;
        bool completed;
    }

    // create an array of TodoItem structure
    TodoItem[] public todos;

    function createTodo(string memory _text) public {
        // There are multiple ways to initialize structs

        // Method 1 - Call it like a function
        todos.push(TodoItem(_text, false));

        // Method 2 - Explicitly set its keys
        todos.push(TodoItem({text: _text, completed: false}));

        // Method 3 - Initialize an empty struct, then set individual properties
        TodoItem memory todo;
        todo.text = _text;
        todo.completed = false;
        todos.push(todo);
    }

    // update a struct value
    function update(uint _index, string memory _text) public {
        todos[_index].text = _text;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }
}
