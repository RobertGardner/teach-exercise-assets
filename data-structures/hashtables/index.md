# Hash Tables

<progress value="2" max="3"></progress>

## Exercise Overview

A Hash Table is a data structure that stores data as key/value pairs. You look up an item in a Hash Table using the key, and the Hash Table returns the value. A Hash Table gets its name from the operation used to look up an item in the table. A Hash Table stores the keys in a simple list. To locate an item, the key is "hashed", which means that a calculation is performed on it that reduces the key to a number between 0 and the size of the list. This hash value is used as an index into the table to find the item.

<p>
  <div align="middle" style="border: thin solid">
    <img src="./hashtables.png">
    <p>A hash table mapping names to phone numbers.</p>
  </div>
</p>

Hash functions (which are used to hash the keys) do not produce a unique index for every key. Sometimes the hash value for two different keys can be the same, which means those two items get stored at the same index. In that case, all keys that hash to the same index must be searched to find the correct one. There are various approaches to minimizing the impact of these collisions. In most common situations, the impact of hash collisions is negligible.

Performance of hash tables for looking up keys is excellent. The hash algorithm is constant time and indexing into a list is constant time, so the overall lookup time is also constant time. With such great performance, why don't we use hash tables for every problem we encounter? One reason is because the order of items in a hash table is unpredictable, so they cannot be used to store sorted data. Another is that they take up extra memory to manage the list of keys and values. Other reasons also limit their use. However, they are a very important and frequently-used data structure. For example, in JavaScript, all objects have their properties and values stored in what is essentially a Hash Table.

The net result is that _reading_, _inserting_ and _deleting_ items in a Hash Table are all constant-time operations. (Note that these are all "typical" times. If there are many hash collisions, a hash table can instead give linear times for all these operations.)

## Exercise Introduction

JavaScript provides a standard built-in Hash Table named [`Map`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map), which maps keys to values.

JavaScript has an additional standard built-in Hash Table named [`Set`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set), which is similar to an array but guarantees that all values in the `Set` are unique. `Set` uses a Hash Table to guarantee that the values are unique.

For this exercise you will use a `Map` and `Set` to implement two steps similar to those used when Google Search processes a query.

### Google Indexing

Google crawls the World Wide Web looking for HTML documents. It creates a huge database of these documents. It then creates a "document index", which is a hash table whose key is a word found in one or more documents, and whose value is the set of documents that word appears in.

That is, the index is a Hash Table of:

> word ➡️ set of documents; or, in TypeScript, `Map<string, Set<Document>>`

### Google Querying

When a user enters a search in the Google website, Google looks up each word in the search query to see if it is found in the document index. This produces a list of all the documents in the World Wide Web that match the search.

### Google Ranking

Finally, with the list of all the documents that match the search query, Google ranks the documents to find the ones it deems most relevant to the user and presents those as the search results.

## Exercise

## Continue to Binary Search Trees ➡️

For more practice using data structures, proceed to [Binary Search Trees](../bsts).
