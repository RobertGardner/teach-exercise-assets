# Level 1 - Linked Lists - Basic Manipulation

<progress value="3" max="9"></progress>

## Introduction

A linked list is a concrete data structure consisting of a bunch of value-containing "nodes" strung together into a single, sequential list. A basic linked list node has the following properties:

- `.data` - contains the node's value.
- `.next` a reference to the next node in the list, if there is one. If there is no "next" node in the list, this property is typically set to `null`.

Note that in a linked list, every node is itself a linked list!

<p align="middle">
  <img src="./linked-list.png">
</p>

Linked lists are sequential access (like a queue), not random access (like an array). That means that, in order to go to a specific place in the list, you have to start at the beginning, then jump from node to node until you get there. However, unlike a queue, a linked list doesn't need to be mutated to scan its contents.

In a basic linked list, you start at the "head" node, then jump to the next node through the `.next` property. The last node in a basic linked list is called the "tail" node. The "list" itself is simply a reference to the "head" node. Since each node only contains a reference to the next node in the list, there is no way to backtrack. That means each node is the "head" of its own list, and there's no way to tell if any other nodes came before it.\*

> - _Unless you have circular node references in the list. For this exercise, no circular references will be used, so every list has an end_.

## Exercise

For this exercise you will be defining several functions that manipulate a linked list. You are given a description of each function, a suite of unit tests for each function, and a JavaScript file in which to complete each function definition.

### Getting Started

The `LinkedList` class is defined in `lib/linked-list.js`.

The functions you will be implementing are declared in `linked-lists-1.js` and their tests are in `linked-lists-1.test.js`.

Remember to examine the code for the `LinkedList` class and to read all the tests for a function before you implement it.

### Basic Problems

1. #### `getHead(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.

   ##### Return Value

   This function should return the value of the `data` property of the first node in the `list`.

1. #### `updateHead(list, value)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.
   - `value` - any valid JSON data type.

   ##### Return Value

   None (`undefined`).

   ##### Function Affect

   This function should update the value of the data stored in the `head` of the list with the supplied `value`.

1. #### `withoutHead(list)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.

   ##### Return Value

   The function should return the entire list except for the current `head` node.

1. #### `prepend(list, value)`

   ##### Parameters

   - `list` - a `LinkedList` object containing one or more nodes.
   - `value` - any JavaScript value that can be converted into JSON.

   ##### Return Value

   This function should create a new node with the supplied `value` and set that node as the `head` of the supplied list. The entire list should then be returned. Note that since a node _is a_ linked list, you can create the node with `new LinkedList(value)`.

## Submitting Your Solution

When your solution is complete you have finished Level 1! Submit a Pull Request on GitHub. Detailed instructions can be found [**here**](https://lms.learningfuze.com/code-guides/Learning-Fuze/curriculum/submitting-your-solution).

## Continue to Level 2 - Stacks ➡️

For more practice using data structures, proceed to [Level 2 - Stacks](../../level2/stacks).
