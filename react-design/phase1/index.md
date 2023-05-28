# Phase 1 - Identify Components

<progress value="1" max="3"></progress>

In this phase, your goal is to identify your React components and implement static versions of them. Your implementation should recreate the static layout of the mockup.

## Exercise

1. Study the mockup and identify the components.

   - There needs to be one main component that controls all the behavior. Name it `RotatingBanner`.
   - There are many ways this mockup can be broken into components.
     - At one extreme, there is just one component, which implements the entire mockup. However, this is not an effective use of the power of React, which works best when you have multiple, single-purpose, semantically rich components, all interacting with each other.
     - At the other extreme, every element in the mockup could be a separate component: the item name, the next button, each of the indicator buttons, and the prev button. However, this is very fine-grained and forces the RotatingBanner to coordinate all the activity across all those components.
     - Study the mockup and see if you can identify a better collection of components. Do this by asking which pieces of the UI are independent of the others and which have behavior that naturally groups together. Look at [Tips](#tips) after you have determined the set of components you think is best and compare it with the instructor set of components.

1. Create React components for each of the components you identified above and implement a static version of each of them. Use hard-coded data.
1. Verify that your app looks similar to the mockup, though it will not have any behavior.

## Tips

<details>

  <summary>Expand after completing your design</summary>

  <p>Although other breakdowns are possible, a logical breakdown has 5 components:</p>

  <ul>
    <li>The main component, <code class="language-plaintext highlighter-rouge">RotatingBanner</code></li>
    <li>The <code class="language-plaintext highlighter-rouge">Banner</code> component that displays the name of the current item</li>
    <li>The <code class="language-plaintext highlighter-rouge">NextButton</code> component that renders a "Next" button for cycling to the next item</li>
    <li>The <code class="language-plaintext highlighter-rouge">PrevButton</code> component that renders a "Prev" button for cycling to the previous item</li>
    <li>The <code class="language-plaintext highlighter-rouge">Indicators</code> component that renders a list of buttons, each displaying an index, for cycling to a specific item; the current item will be highlighted</li>
  </ul>

  <p>These components will be used in the remaining phases.</p>

</details>

## Submit the current code

When you are done with this phase, submit a Pull Request on GitHub. Detailed instructions can be found [**here**](../../guides/submitting-your-solution).

**Note:** Do not merge this PR. You will continue to use this PR for subsequent phases.

## Continue to Phase 2 ➡️

Your instructor will instruct you as to when you can proceed to [Phase 2](../phase2/).
