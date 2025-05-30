# Challenge: Format Phone Number

## Instructions

Write a function called `formatPhoneNumber` that takes in an array of numbers and returns a string representing the phone number formed by concatenating the numbers in the specified format.

### Function Signature

```js
/**
 * Returns a string representing a phone number.
 * @param numbers The numbers to use in the phone number.
 * @returns The formatted phone number.
 */
function formatPhoneNumber(numbers: number[]): string;
```

### Examples

```js
formatPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]); // => "(123) 456-7890"
formatPhoneNumber([5, 1, 9, 5, 5, 5, 4, 4, 6, 8]); // => "(519) 555-4468"
formatPhoneNumber([3, 4, 5, 5, 0, 1, 2, 5, 2, 7]); // => "(345) 501-2527"
```

### Constraints

- The input array will always have 10 numbers
- The numbers can be any integer from 0 to 9

### Hints

- You can use the `Array.join` method to concatenate the numbers in the array.
- You can use the `Array.slice` method to get a subset of the array.

## Solutions

<details markdown="1">
  <summary>Click For Solution 1</summary>

```js
export function formatPhoneNumber(numbers: number[]): string {
  const areaCode = numbers.slice(0, 3).join('');
  const prefix = numbers.slice(3, 6).join('');
  const lineNumber = numbers.slice(6).join('');

  return `(${areaCode}) ${prefix}-${lineNumber}`;
}
```

### Explanation

- Create 3 variables to store the area code, prefix, and line number.
- Use the `Array.slice` method to get a subset of the array.
- Use the `Array.join` method to concatenate the numbers in the array.

</details>

<details markdown="1">
  <summary>Click For Solution 2</summary>

```js
export function formatPhoneNumber(numbers: number[]): string {
  const formatted = numbers.join('');
  return `(${formatted.substring(0, 3)}) ${formatted.substring(
    3,
    6
  )}-${formatted.substring(6)}`;
}
```

### Explanation

- Creates a variable to store the numbers in the array concatenated together.
- Uses the `String.substring` method to get a subset of the string.

</details>

<details markdown="1">
  <summary>Click For Solution 3</summary>

One line arrow function:

```js
const formatPhoneNumber = (numbers) =>
  `(${numbers.slice(0, 3).join("")}) ${numbers.slice(3, 6).join("")}-${numbers
    .slice(6)
    .join("")}`;
```

### Explanation

This is similar to the first solution, but we used an arrow function and Array.slice method chaining.

</details>
