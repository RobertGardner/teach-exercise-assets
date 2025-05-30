# Challenge: Quick Sort Implementation

Now that you're familiar with the Quick Sort algorithm, it's time to implement it in TypeScript. This algorithm is highly efficient and employs a divide-and-conquer strategy to sort an array.

## Instructions

Implement a function called `quickSort` that takes an array of numbers as an argument and returns a sorted array using the Quick Sort algorithm.

### Function Signature

```js
/**
 * Sorts an array using the Quick Sort algorithm.
 * @param array The array to be sorted.
 * @returns The sorted array.
 */
function quickSort(array: number[]): number[];
```

### Examples

```js
console.log(quickSort([5, 4, 3, 2, 1])); // Output: [1, 2, 3, 4, 5]
console.log(quickSort([64, 34, 25, 12, 22, 11, 90])); // Output: [11, 12, 22, 25, 34, 64, 90]
```

### Constraints

- The input array can contain any number of elements.
- The elements in the input array are unique and positive integers.

### Notes

- The Quick Sort algorithm involves selecting a pivot element, partitioning the array, and recursively sorting the subarrays on either side of the pivot.
- While Quick Sort's average-case time complexity is O(n log n), it can have a worst-case time complexity of O(n^2) if not optimized. Optimized pivot selection methods, such as choosing the median of three random elements, help mitigate this worst-case scenario.

### Hints

- Pivot Selection: The choice of pivot significantly affects the efficiency of Quick Sort. Common pivot selection strategies include choosing the first, last, or middle element, or using the median of three random elements.
- Partitioning: Implement a partitioning step that rearranges the elements such that elements less than the pivot are on the left, and elements greater than the pivot are on the right.
- Recursion: Recursively apply the Quick Sort algorithm to the subarrays on either side of the pivot.

## Solutions

<details markdown="1">
  <summary>Click For Solution</summary>

```js
export function quickSort(arr: number[]): number[] {
  if (arr.length <= 1) {
    return arr;
  }

  const pivot = arr[arr.length - 1];
  const left = [];
  const right = [];

  for (let i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      left.push(arr[i]);
    } else {
      right.push(arr[i]);
    }
  }

  return [...quickSort(left), pivot, ...quickSort(right)];
}
```

### Explanation

- If the length of the array is 1 or less, it is already sorted, so we return the array as is.
- Otherwise, we choose a pivot element (in this case, the last element of the array).
- We create two arrays: `left` to store elements less than the pivot, and `right` to store elements greater than the pivot.
- We iterate through the array and partition the elements into the `left` and `right` arrays based on their relationship to the pivot.
- Finally, we recursively apply `quickSort` to the `left` and `right` arrays, and then concatenate them along with the pivot to get the sorted array.

</details>
