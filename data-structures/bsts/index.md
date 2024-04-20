# Level 3 - Linked Lists - Bonus Challenge

<progress value="9" max="9"></progress>

## Exercise

For this exercise you will be defining several functions that manipulate a linked list. You are given a description of each function, a suite of unit tests for each function, and a JavaScript file in which to complete each function definition.

### Getting Started

The `LinkedList` class is defined in `lib/linked-list.js`.

The functions you will be implementing are declared in `linked-lists-3.js` and their tests are in `linked-lists-3.test.js`.

Remember to examine the code for the `LinkedList` class and to read all the tests for a function before you implement it.

### Bonus Challenge Problems

1. #### `removeTail(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   If the supplied `list` contains only one node, the function should not do anything.

   If the supplied `list` contains more than one node, the function should remove the last node from the `list`.

1. #### `updateNext(list, value)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.
   - `value` - any JavaScript value that can be converted into JSON.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   If the list does not have a second node, the function should return `undefined`.

   If the function has a second node, the data of that node should be updated with the supplied `value`.

1. #### `insertNext(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.
   - `value` - a valid JSON data type.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   This function should create a new node with the supplied `value` and add the new node as the second node in the `supplied` list and make the current second node the new third node.

1. #### `removeNext(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   If the list contains only one node, the function should not modify the supplied `list`.

   If the list contains at least two nodes, the second node should be removed from the `list` and the third node should become the new second node of the `list`.

1. #### `swapFront(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.

   ##### Return Value

   If the supplied `list` contains only one node, the function should return the `list` and not modify it.

   If the supplied `list` contains at least two nodes, the function should switch the 1st and 2nd nodes and return the modified `list`.

## Submitting Your Solution

When your solution is complete you have finished Level 3! Congratulations!! Notify your instrutor by pushing your changes to your branch.
