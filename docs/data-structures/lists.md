# Lists

<progress value="1" max="3"></progress>

## Exercise Overview

A list is a data structure that holds its data in a contiguous block of memory. Each element in a list is the same size, and they are accessed by index, with the first element being at index 0.

![Lists](assets/lists.gif)

An element in a list can be located in memory by multiplying the index by the element size and adding the memory location of the first element in the list. This means that any element in a list can be read from memory in constant time, if you know its index. This, in theory, makes lists very fast.

Although access is fast, inserting an element into a list or removing an element from a list requires shifting elements. For example, if the element at index 5 is removed from the list, all elements with indexes greater than 5 must be shifted downwards to fill the removed location. Similarly, if a new element needs to be inserted after index 5, all elements greater than index 5 must be shifted upwards to make remove for the new element. These are both linear operations.

Another downside of a list is the requirement that all the elements be in a contiguous block of memory. Unfortunately, contiguous memory is required to make it possible to find elements using the simple arithmetic formula.

There are two problems with the requirement for contiguous memory as lists grow very large. The first is that it can be challenging to find enough contiguous memory in a computer's memory system. The second is that if the list needs to grow larger to accommodate more elements, the block must be grown. If it cannot grow in its current location because the surrounding memory isn't available, it must be moved to a location that has enough contiguous memory available. If a list is moved to a new location in memory, every element must be copied from the original location to the new location. This is a linear operation.

The net result of all this is that _reading_ an element in a list is a constant-time operation, while _inserting_ and _deleting_ an element are both linear operations.

**Important Note:** A JavaScript array is implemented as an object. It does not hold the data in a contiguous block and is less efficient than lists in other languages, like Java or C++. However, JavaScript arrays are great for small amounts of data.

## Exercise

For this exercise you will be implementing a [Priority Queue](https://en.wikipedia.org/wiki/Priority_queue). A Priority Queue is a list of elements where each element has a numeric "priority" associated with it and elements are retrieved from the list in priority order. That is, the element with the highest priority is retrieved first, second highest next, and so on.

Each element in the queue is stored in a "node", which is an object that holds the element's value and priority. In the implementation for this exercise, the nodes are stored in a JavaScript array, sorted by priority, with the highest priority at the front (index `0`) and lowest priority at the end (index `nodes.length - 1`).

The file `queue.ts` and its associated `queue.test.ts` have been provided. In `queue.ts` is a class for holding the node and a skeleton for the `PriorityQueue` class. You must implement the methods in the `PriorityQueue` class, according to the JsDoc description, to fix all the failing tests.

The methods you will implement are:

- enqueue - adds an element to the queue, given its value and priority
- dequeue - removes the element with the highest priority and returns its value
- peek - returns the value of the element with the highest priority, without removing it from the queue

**Tips:**

- To access the `nodes` class variable, use `this.nodes`.
- You can create a new node with `new Node(value, priority)`.
- Some useful Array methods for this exercise are `push`, `splice`, and `shift`.
- Enqueueing an item onto an empty queue is easy. Enqueueing an item into an existing queue requires locating the element with a lower (or equal) priority than the new element and inserting the new node into the array _after_ that element.

## Continue to Hash Tables ➡️

For more practice using data structures, proceed to [Hash Tables](hashtables.md).
