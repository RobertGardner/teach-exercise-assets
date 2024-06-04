# Level 3 - Stacks - Bonus Challenge

<progress value="7" max="9"></progress>

## Exercise

For this exercise you will be defining several functions that manipulate a stack. You are given a description of each function, a suite of unit tests for each function, and a JavaScript file in which to complete each function definition.

### Getting Started

The `Stack` class is defined in `lib/stack.js`.

The functions you will be implementing are declared in `stacks-3.js` and their tests are in `stacks-3.test.js`.

Remember to examine the code for the `Stack` class and to read all the tests for a function before you implement it.

### Bonus Challenge Problems

1. #### `get2ndFromTop(stack)`

   ##### Parameters

   - `stack` - a `Stack` object containing zero or more values.

   ##### Return Value

   This function should return `undefined` if the `stack` is empty.

   This function should return `undefined` if the `stack` has only one value and it should not alter the stack.

   If there is a second value in the `stack`, it should return that value and it should not alter the stack.

1. #### `insertUnderTop(stack, value)`

   ##### Parameters

   - `stack` - a `Stack` object containing zero or more values.
   - `value` - any valid JavaScript JSON data type.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   If the `stack` provided is empty, it should not be modified.

   If the `stack` provided is not empty, the provided `value` should be added to the stack below the current `top` value.

## Continue to Level 3 - Queues ➡️

For bonus challenge problems on queues, proceed to [Level 3 - Queues](queues.md).
