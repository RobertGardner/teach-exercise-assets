# Phase 1 - Identify Components

<progress value="1" max="3"></progress>

In this phase, your goal is to identify your React components and implement static versions of them. Your implementation should recreate the static layout of the mockup.

## Exercise

1. Study the mockup and identify the components.

   - There needs to be one main component that controls all the behavior. Name it `RotatingBanner`.
   - There are many ways this mockup can be broken into components.
     - At one extreme, there is just one component, which implements the entire mockup. However, this is not an effective use of the power of React, which works best when you have multiple, single-purpose, semantically rich components, all interacting with each other.
     - At the other extreme, every element in the mockup could be a separate component: the item name, the next button, each of the 6 indicator buttons, and the prev button. However, this is very fine-grained and forces the RotatingBanner to coordinate all the activity across all those components.
     - A good design balances these two extremes, grouping elements together whose activity needs to be coordinated, and creating reusable components where possible.
       - Note that it is not always easy to identify which components might be reusable. If in doubt, create single purpose components and then later see if they can be combined.
     - Study the mockup and see if you can identify a good collection of components. Do this by asking which pieces of the UI are independent of the others and which have behavior that naturally groups together. Look at [Tips](#tips) after you have determined the set of components you think is best and compare it with the instructor set of components.
       - You are welcome to use any set of components you are happy with. However, for this exercise, to make sure you get practice working with multiple components on a page, the `RotatingBanner` is not allowed to directly use any HTML elements. It should only render other components in its JSX. This will also lead to a clean, reusable design and is a good way to approach building complex larger components.

1. Create React components for each of the components you identified above and implement a static version of each of them. Use hard-coded data.
1. Verify that your app looks similar to the mockup, though it will not have any behavior.

## Tips

<details markdown="1">

  <summary>Expand after completing your design and before starting the next phase</summary>

Although other breakdowns are possible, a logical breakdown has 5 components:

- The main (parent) component, `RotatingBanner`
- The `Banner` component that displays the name of the current item
- The `NextButton` component that renders a "Next" button for cycling to the next item
- The `PrevButton` component that renders a "Prev" button for cycling to the previous item
- The `Indicators` component that renders a list of buttons, each displaying an index, for cycling to a specific item; the current item will be highlighted

These components will be used in the remaining phases.

Note that in your implementation of `Indicators`, a `for-loop` can work well for rendering the buttons. For example, it could look similar to:

```js
const buttons = [];
for (let i = 0; i < count; i++) {
  buttons.push(<button>Label</button>);
}
```

</details>

## Commit the current code

When you are done with this phase, commit your changes to the branch you created for this exercise.

Do _not_ create a PR. You will create the PR when you are finished. However, it is a good habit to commit your work each time to finish a phase of the work. This makes it easy to revert back to a known, good state if things go haywire!

## Continue to Phase 2 ➡️

Proceed to [Phase 2](phase2.md).
