# Level 2 - Queues - Additional Practice

<progress value="5" max="9"></progress>

## Exercise

For this exercise you will be defining several functions that manipulate a queue. You are given a description of each function, a suite of unit tests for each function, and a JavaScript file in which to complete each function definition.

### Getting Started

The `Queue` class is defined in `lib/queue.js`.

The functions you will be implementing are declared in `queues-2.js` and their tests are in `queues-2.test.js`.

Remember to examine the code for the `Queue` class and to read all the tests for a function before you implement it.

### Additional Practice Problems

1. #### `postpone(queue)`

   ##### Parameters

   - `queue` - a `Queue` object containing zero or more values.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   If the provided `queue` is empty, the function should not do anything.

   If the `queue` is not empty, the value at the front of the `queue` should be moved to the back of the `queue`.

1. #### `take2nd(queue)`

   ##### Parameters

   - `queue` - a `Queue` object containing zero or more values.

   ##### Return Value

   This function should remove and return the second value in the `queue` and move the first value to the back of the `queue`.

## Continue to Level 2 - Linked Lists ➡️

For more practice on linked lists, proceed to [Level 2 - Linked Lists](linked-lists.md).
