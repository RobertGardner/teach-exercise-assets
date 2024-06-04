# Level 1 - Stacks - Basic Manipulation

<progress value="1" max="9"></progress>

## Introduction

A stack is a list-type abstract data structure that limits interaction to one end of the list. It can be pictured as a vertical stack of values, where the sides are hidden and only the top value can be seen. A real-life example of a stack is a can of Pringles&trade; potato chips that only allows you to take one chip at a time.

![Stacks](stack-lifo.png)

Stacks have an interface with at least two methods:

- `push(value)` - adds a `value` to the "top" of the stack
- `pop()` - removes the top value from the stack and returns it, or `undefined` if the stack is empty

Together, these facilitate last-in-first-out (LIFO) operations: the last thing `push`ed onto the stack is the first thing that can be `pop`ed out.

Often, stacks include additional helper operations that make them a bit easier to use, such as `peek()`, which returns the "top" value of the stack without removing it. If the stack is empty, `peek()` will return `undefined`.

## Exercise

For this exercise you will be defining several functions that manipulate a stack. You are given a description of each function, a suite of unit tests for each function, and a JavaScript file in which to complete each function definition.

### Getting Started

The `Stack` class is defined in `lib/stack.js`.

The functions you will be implementing are declared in `stacks-1.js` and their tests are in `stacks-1.test.js`.

Remember to examine the code for the `Stack` class and to read all the tests for a function before you implement it.

### Basic Problems

1. #### `getTop(stack)`

   ##### Parameters

   - `stack` - a `Stack` object containing zero or more values.

   ##### Return Value

   This function should returned `undefined` if the `stack` is empty.

   If the `stack` is not empty, it should return the data in the `top` of the stack.

1. #### `addToTop(stack, value)`

   ##### Parameters

   - `stack` - a `Stack` object containing zero or more values.
   - `value` - any valid JavaScript JSON data type.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   This function should add the given value to the `stack`

1. #### `takeTop(stack)`

   ##### Parameters

   - `stack` - a `Stack` object containing zero or more values.

   ##### Return Value

   This function should return `undefined` if the `stack` is empty.

   If the `stack` is not empty, it should return the value from the `top` of the `stack` and remove that value from the `stack`.

1. #### `isEmpty(stack)`

   ##### Parameters

   - `stack` - a `Stack` object containing zero or more values.

   ##### Return Value

   This function should return `true` if the `stack` is empty. Otherwise it should return `false`.

## Continue to Level 1 - Queues ➡️

For basic operations on queues, proceed to [Level 1 - Queues](queues.md).
