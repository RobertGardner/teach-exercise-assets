# Level 3 - Queues - Bonus Challenge

<progress value="8" max="9"></progress>

## Exercise

For this exercise you will be defining several functions that manipulate a queue. You are given a description of each function, a suite of unit tests for each function, and a JavaScript file in which to complete each function definition.

### Getting Started

The `Queue` class is defined in `lib/queue.js`.

The functions you will be implementing are declared in `queues-3.js` and their tests are in `queues-3.test.js`.

Remember to examine the code for the `Queue` class and to read all the tests for a function before you implement it.

### Bonus Challenge Problems

1. #### `take2nd(queue)`

   ##### Parameters

   - `queue` - a `Queue` object containing zero or more values.

   ##### Return Value

   This function should remove and return the second value in the `queue` and move the first value to the back of the `queue`.

1. #### `takeSmaller(queue)`

   ##### Parameters

   - `queue` - a `Queue` object containing zero or more **numbers**.

   ##### Return Value

   If the supplied `queue` is empty, the function should return `undefined`.

   If the supplied `queue` has only one value, the function should return that one value and remove it from the `queue`

   When the supplied `queue` has at least two values:

   - If the first value is smaller than the second, the function should return the first value, remove the first value from the `queue`, and move the second value to the back of the `queue`.

   - If the first and second values are equal, the function should return one value and remove it from the `queue` and move the other value to the back of the `queue`.

   - If the first value is larger than the second, the function should return the second value, remove the second value from the `queue`, and move the first value to the back of the `queue`.

1. #### `takeNextSmallest(queue)`

   ##### Parameters

   - `queue` - a `Queue` object containing zero or more **numbers**.

   ##### Return Value

   If the `queue` is empty, the function should return `undefined`.

   If the `queue` has only one value, the function should return that value and remove it from the `queue`.

   If the `queue` has more than one value, the function should remove and return the first number in the `queue` that is `less than or equal` to its successor. All values that are greater then their successor should be cycled to the back of the `queue`.

## Continue to Level 3 - Linked Lists ➡️

For bonus challenge problems on linked lists, proceed to [Level 3 - Linked Lists](../linked-lists/).
