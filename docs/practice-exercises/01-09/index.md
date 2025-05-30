# Challenge: Count Vowels

## Instructions

Write a function called `countVowels` that takes in a string and returns the number of vowels in the string.

### Function Signature

```js
/**
 * Returns the number of vowels in a string.
 * @param str The string to search.
 * @returns The number of vowels in the string.
 */
function countVowels(str: string): number;
```

### Examples

```js
countVowels("hello"); // 2
countVowels("why"); // 0
countVowels("mississippi"); // 4
```

### Constraints

- It shouldn't matter if the input string is uppercase or lowercase

### Hints

## Solutions

<details markdown="1">
  <summary>Click For Solution</summary>

```js
export function countVowels(str: string): number {
  const formattedStr = str.toLocaleLowerCase();
  let count = 0;

  for (let i = 0; i < formattedStr.length; i++) {
    const char = formattedStr[i];

    if (
      char === 'a' ||
      char === 'e' ||
      char === 'i' ||
      char === 'o' ||
      char === 'u'
    ) {
      count++;
    }
  }

  return count;
}
```

## Explanation

- Make the string lowercase. This is because we want to count both uppercase and lowercase vowels.
- Create a variable called `count` and set it to `0`. This is the variable we will use to keep track of how many vowels we have found.
- Create a `for` loop that will loop through each character in the string. We then create a variable called `char` and set it to the current character in the string.
- Check if the character is a vowel. If it is, we increment `count` by `1`. Once we have looped through the entire string, we return `count`.

</details>
