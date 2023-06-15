# SQL Update

<progress value="2" max="3"></progress>

## Basic Syntax and Example

An SQL `update` statement is a means of updating rows in a database table. Consider the following `"products"` table:

| productId | name        | description                | price | category |
| --------- | ----------- | -------------------------- | ----- | -------- |
| 85        | ShamWow     | Soaks up so much liquid!   | 20    | cleaning |
| 24        | ShakeWeight | Makes you really strong!   | 30    | fitness  |
| 91        | OxyClean    | A versatile stain remover! | 10    | cleaning |

To make an update we might execute the following command:

```sql
update "products"
   set "price" = 100;
```

**HOWEVER** there is a serious problem with this query as it would update _every_ row in the table!

| productId | name        | description                | price | category |
| --------- | ----------- | -------------------------- | ----- | -------- |
| 85        | ShamWow     | Soaks up so much liquid!   | 100   | cleaning |
| 24        | ShakeWeight | Makes you really strong!   | 100   | fitness  |
| 91        | OxyClean    | A versatile stain remover! | 100   | cleaning |

Therefore, great care must be taken to include a `where` clause in your `update` statements to only target specific rows:

```sql
update "products"
   set "price" = 100
 where "productId" = 24;
```

If we were careful our data would now look like this:

| productId | name        | description                | price | category |
| --------- | ----------- | -------------------------- | ----- | -------- |
| 85        | ShamWow     | Soaks up so much liquid!   | 20    | cleaning |
| 24        | ShakeWeight | Makes you really strong!   | 100   | fitness  |
| 91        | OxyClean    | A versatile stain remover! | 10    | cleaning |

## Updating Multiple Columns

It is possible to update multiple columns of a row with a comma-separated list of assignments in the `set` clause.

```sql
update "products"
   set "price"       = 200,
       "name"        = 'Super ShakeWeight',
       "description" = 'Makes you ULTRA strong!'
 where "productId" = 24;
```

| productId | name              | description                | price | category |
| --------- | ----------------- | -------------------------- | ----- | -------- |
| 85        | ShamWow           | Soaks up so much liquid!   | 20    | cleaning |
| 24        | Super ShakeWeight | Makes you ULTRA strong!    | 200   | fitness  |
| 91        | OxyClean          | A versatile stain remover! | 10    | cleaning |

## Exercise

Create and implement the following `.sql` files.

1. `make-yoder.sql`

   Update the actor with the `actorId` of `15` to have the `firstName` of `'Baby'` and the `lastName` of `'Yoda'`.

1. `sick-prank.sql`

   Give all NC-17 rated films a rating of `'G'`.

   > Hint: This will affect 210 rows!

1. `murica.sql`

   Change the country of `'United States'` to be named `'Murica'`.

## Continue to SQL Delete ➡️

To learn how to delete existing data, proceed to [SQL Delete](../delete/).
