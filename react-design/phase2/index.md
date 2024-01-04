# Phase 2 - Identify State

<progress value="2" max="3"></progress>

In this phase, your goal is to identify the minimal set of state your components need to remember, and which components "own" that state. Each state value should be owned by exactly one component (the [DRY Principle](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)).

State is data that changes as the user interacts with your app. Here are some rules of thumb for determining state:

- State changes over time. If the data doesn't change, it isn’t state.
- Data passed in from a parent via props is not state.
- If it can be computed from other state or props, it isn’t state.
- Remember that state can only flow from parent to child, passed to each child in one or more props.

## Exercise

1. Compare your code to [Prior Code](#prior-code). Make sure it is roughly similar.
1. Consider the Rotating Banner system and identify the state that is needed.
1. Determine which components should own that state and which of its children need to use that state.
   - As a rule of thumb, only pass state to children if they need it to display properly. Although it is occasionally necessary to pass state that does not affect the visual display, this is very rare.
   - Look at [Tips](#tips) after you have determined the state and its owners and compare it with the instructor solution.
1. Add a call to the `useState` hook for each state variable in the component that owns that state. Give the state a reasonable but arbitrary default value.
1. Pass the state to each component that needs to use it.
   - Declare a prop in the child component to receive the state
   - Pass the state to that prop in the parent component
1. Verify that the components correctly display the new props. Modify the default `useState` values to verify proper behavior.

## Prior Code

At the beginning of this phase, your code should be somewhat similar to the following:

```jsx
export default function RotatingBanner({ items }) {
  return (
    <div>
      <Banner item={items[0]} />
      <PrevButton />
      <Indicators count={items.length} />
      <NextButton />
    </div>
  )
}
function Banner({ item }) {...}
function NextButton() {...}
function PrevButton() {...}
function Indicators({ count }) {...}
```

## Tips

<details markdown="1">

  <summary>Expand after completing your design and before starting the next phase</summary>

The Rotating Banner system can be completely controlled with one state variable that holds the index of the item currently being displayed.

- The components that use this state are `Banner` and `Indicators`.
- The item that `Banner` displays depends on the current index.
- `Indicators` needs to highlight the button corresponding to the current index.
- `NextButton` and `PrevButton` do _not_ modify their visual display even if the current index changes, so they do not depend on the state.
- Since `RotatingBanner` is the closest parent to those components that depend on the current index, that state should be owned by `RotatingBanner`.

  - Note that there are two choices with how `Banner` receives and uses the current index:

    1. Pass `items` and `currentIndex` as props, and `Banner` determines which item to display
    1. Pass `items[currentIndex]` as a prop, in which case `Banner` depends _indirectly_ on `currentIndex`

  - The second approach is the simplest and minimizes the knowledge that `Banner` has about its context

</details>

## Submit the current code

When you are done with this phase, commit your code to the current branch.

Note that you might have unused setter functions, which will cause lint errors that keep you from committing. There are several ways you can work around this:

- Comment out the setter function (`const [currentIndex /*, setCurrentIndex */] = useState()`).
- Disable the lint warning (with `// eslint-disable-next-line @typescript-eslint/no-unused-vars`). If you do this, remember to remove the comment once you start using the setter. Also note that the easiest way to get this inserted in your code is to click on the lint error in VS Code and then click the light bulb.
- Commit with the `--no-verify` option. If you do this, _don't get used to it_! It is a dangerous option that side-steps protections lint provides.

## Continue to Phase 3 ➡️

Your instructor will instruct you as to when you can proceed to [Phase 3](../phase3/).
