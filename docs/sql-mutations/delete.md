# SQL Delete

<progress value="3" max="3"></progress>

## Basic Syntax and Example

An SQL `delete` statement is how rows get removed from tables. Consider the following `"products"` table:

| productId | name        | description                | price | category |
| --------- | ----------- | -------------------------- | ----- | -------- |
| 85        | ShamWow     | Soaks up so much liquid!   | 20    | cleaning |
| 24        | ShakeWeight | Makes you really strong!   | 30    | fitness  |
| 91        | OxyClean    | A versatile stain remover! | 10    | cleaning |

To delete from this table, we might execute the following command:

```sql
delete
  from "products";
```

💀💀💀💀 **WE JUST DELETED EVERYTHING FROM THE TABLE!** and _there is no undo_. 😢

| productId | name | description | price | category |
| --------- | ---- | ----------- | ----- | -------- |

Are you awake? 😈

You must be _extremely_ careful when deleting things from a table as it cannot be undone. Let's try that again. We only want to delete the ShakeWeight because, well, it's ridiculous. We can target specific rows to delete by including a `where` clause. As with `insert` and `update` statements, we can include a `returning` clause if we want the affected row(s) returned to us. A `returning` clause is not mandatory though.

```sql
delete
  from "products"
  where "productId" = 24
  returning *;
```

Here's what's left:

| productId | name     | description                | price | category |
| --------- | -------- | -------------------------- | ----- | -------- |
| 85        | ShamWow  | Soaks up so much liquid!   | 20    | cleaning |
| 91        | OxyClean | A versatile stain remover! | 10    | cleaning |

## Complex `where` Clauses With `and`

A `where` clause does not have to refer to only one column. In fact, multiple criteria can be specified using the `and` keyword.

Let's "reset" the example table...

| productId | name        | description                | price | category |
| --------- | ----------- | -------------------------- | ----- | -------- |
| 85        | ShamWow     | Soaks up so much liquid!   | 20    | cleaning |
| 24        | ShakeWeight | Makes you really strong!   | 30    | fitness  |
| 91        | OxyClean    | A versatile stain remover! | 10    | cleaning |

If we wanted to `delete` all `"products"` in the `'cleaning'` category that are cheaper than `20`, we would:

```sql
delete
  from "products"
 where "category" = 'cleaning'
   and "price"    < 20
```

| productId | name        | description              | price | category |
| --------- | ----------- | ------------------------ | ----- | -------- |
| 85        | ShamWow     | Soaks up so much liquid! | 20    | cleaning |
| 24        | ShakeWeight | Makes you really strong! | 30    | fitness  |

You can use `and` just about anywhere that logically makes sense in SQL. If you want multiple things to be true to meet your criteria, simply list them out using `and`. The `or` and `not` operators are also available.

## Exercise

Create and implement the following `.sql` files. You should be able to determine which table to manipulate from the instruction description.

1. `diplomat.sql`

   Delete the address with the `addressId` of `161`.

1. `bizarre.sql`

   Delete the city of `'Pyongyang'`.

1. `sanction.sql`

   Delete the country with the `countryId` of `70`.

1. `puritanical.sql`

   Delete all films that are not rated `'G'`. This should produce an error.

## Submitting Your Solution

When your solution is complete, submit a Pull Request on GitHub.

Detailed instructions can be found [**here**](https://lms.learningfuze.com/code-guides/Learning-Fuze/curriculum/Exercise-Workflow_Submitting-Your-Solution).
