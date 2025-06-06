# Challenge: Maximum Subarray Sum - O(n^2) Solution

## Instructions

Write a function called `maxSubarraySum` that takes an array of integers and a positive integer `k` as input. The function should find the maximum sum of any subarray of length `k` using an O(n^2) solution by using nested for loops.

We will re-visit this and use the sliding window technique to use an O(n) solution.

### Function Signature

```js
/**
 * Finds the maximum sum of any subarray of length k in the input array using an O(n^2) solution.
 * @param arr The input array of integers.
 * @param k The length of the subarray.
 * @returns The maximum sum of any subarray of length k.
 */
function maxSubarraySum(arr: number[], k: number): number;
```

### Examples

```js
const arr1 = [2, 5, 3, 1, 11, 7, 6, 4];
const k1 = 3;
console.log(maxSubarraySum(arr1, k1)); // Output: 24

const arr2 = [-2, -5, -3, -1, -11, -7, -6, -4];
const k2 = 4;
console.log(maxSubarraySum(arr2, k2)); // Output: -9
```

### Constraints

- The input integer `k` will be between 1 and the length of the array.

### Hints

- You can use two nested loops to iterate through all possible subarrays of length `k` and calculate their sums.

### Solutions

<details markdown="1">
  <summary>Click For Solution</summary>

```js
export function maxSubarraySum(arr: number[], k: number): number {
  let maxSum = -Infinity;

  for (let i = 0; i <= arr.length - k; i++) {
    let currentSum = 0;

    for (let j = i; j < i + k; j++) {
      currentSum += arr[j];
    }

    maxSum = Math.max(maxSum, currentSum);
  }

  return maxSum;
}
```

### Explanation

- The function `maxSubarraySum` uses two nested loops to iterate through all possible subarrays of length `k`.
- For each subarray, it calculates the sum using a nested loop and keeps track of the maximum sum encountered.
- Finally, it returns the maximum sum.

Please note that the provided solution has a time complexity of O(n^2) due to the nested loops.

</details>
