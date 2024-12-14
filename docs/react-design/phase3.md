# Phase 3 - Identify Events (Actions)

<progress value="3" max="3"></progress>

In this phase, your goal is to identify the events (actions) that will result in changes to the state you identified in Phase 2. Events are usually the result of user actions like mouse clicks and keyboard input, but could be caused by other things like network events, timers, etc.

When an event happens, an event handler function gets called. In most cases, that event handler will do one of two things:

- Update state directly by calling a state setter function; or
- "Pass the event up" to its parent by calling an event handler prop; the parent's event handler will then either update state or pass the event up

## Exercise

1. Compare your code to [Prior Code](#prior-code). Make sure it is roughly similar.
1. Determine which events (actions) need to modify state, which component those events originate in, which parent should respond to the event, and how the parent should respond.
   - Look at [Tips](#tips) after you have determined the events and responses and compare it with the instructor solution.
1. Add event handler props (their names usually start with "on") to the each component where an event originates and call the event handler prop in response to the event.
1. Add event handlers (their names often start with "handle") to the parents that respond to the event and either call the applicable setter function or pass the event up.
1. In the parents, pass each event handler function to the applicable event handler prop.
1. Verify that the components react properly to events and that the app is fully functional.

## Extra Credit

Often after building a rich React component, you will find that there is duplicate code or other opportunities to create or make use of reusable components.

If time permits, examine your solution for clean up opportunities. For example, what is the difference between `NextButton` and `PrevButton`? Can they be combined into one component? Once you've done that, can the buttons in `Indicators` also make use of that component? Are there other clean up or sharing opportunities?

## Prior Code

At the beginning of this phase, your code should be somewhat similar to the following:

```jsx
export function RotatingBanner({ items }) {
  const [currentIndex, setCurrentIndex] = useState(0);
  return (
    <>
      <Banner item={items[currentIndex]} />
      <PrevButton />
      <Indicators count={items.length} current={currentIndex} />
      <NextButton />
    </>
  )
}
function Banner({ item }) {...}
function NextButton() {...}
function PrevButton() {...}
function Indicators({ count, current }) {
  // Use 'lightblue' background color on the button that matches `current`
  ...
  style={{ backgroundColor: i === current ? 'lightblue' : 'white' }}
  ...
}
```

## Tips

<details markdown="1">
  <summary>Expand after completing your design and before you start implementing</summary>

- The current index needs to be updated when the user clicks on the next button, the prev button, and an indicator button.
- The click on the next button originates in the `NextButton` component.
- The click on the prev button originates in the `PrevButton` component.
- The click on an indicator button originates in the `Indicators` component.
- In all of these cases, the `<button>` element will trigger the event, so the onClick event handler passed to those `<button>` elements must call the component's event handler prop.
- The `RotatingBanner` component responds to the events from its children components and sets the current index according to the event:

  - `NextButton` click: add 1 to the current index, wrapping around to `0`

    - Hint: use `(activeIndex + 1) % items.length`

  - `PrevButton` click: subtract 1 from the current index, wrapping around to `length - 1`

    - Hint: use `(activeIndex - 1 + items.length) % items.length`

  - `Indicator` click: set current index to the index of the clicked button
    - Hint: pass the index of the clicked button to the event handler prop

</details>

## Submit your solution

When you are done with this phase, commit your code to the current branch and create a Pull Request for review.

Detailed instructions can be found [**here**](https://lms.learningfuze.com/code-guides/Learning-Fuze/curriculum/submitting-your-solution).
