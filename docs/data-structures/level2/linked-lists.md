# Level 2 - Linked Lists - Additional Practice

<progress value="6" max="9"></progress>

## Exercise

For this exercise you will be defining several functions that manipulate a linked list. You are given a description of each function, a suite of unit tests for each function, and a JavaScript file in which to complete each function definition.

### Getting Started

The `LinkedList` class is defined in `lib/linked-list.js`.

The functions you will be implementing are declared in `linked-lists-2.js` and their tests are in `linked-lists-2.test.js`.

Remember to examine the code for the `LinkedList` class and to read all the tests for a function before you implement it.

### Additional Practice Problems

1. #### `getLength(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.

   ##### Return Value

   This function should return the total number of nodes in the supplied `list` without modifying it in any way.

1. #### `append(list, value)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.
   - `value` - any valid JSON data type.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   This function should add a new node with the supplied `data` to the end of the supplied `list`.

1. #### `getTail(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.

   ##### Return Value

   The function should return the data stored in the last node of the supplied `list` without modifying it in any way.

1. #### `includes(list, value)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.
   - `value` - any JavaScript value that can be converted into JSON.

   ##### Return Value

   If the supplied `list` contains the supplied `value`, the function should return `true` and not modify the list in any way.

   If the supplied `list` does not contain the supplied `value`, the function should return `false` and not modify the list in any way.

## Submitting Your Solution

When your solution is complete you have finished Level 2! Notify your instructor by pushing your changes to your branch.

## Continue to Level 3 - Stacks ➡️

For bonus challenge problems, proceed to [Level 3 - Stacks](../level3/stacks.md).
