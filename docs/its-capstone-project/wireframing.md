# Making a Wireframe

When you are setting out to begin a new project, the first (_and most important!_) step in the development process is to **_plan_**. Before we even touch code, the first step is to create a complete plan of what needs to be built, and how it should be built. Given that we want to make the portfolio page shown in the gif above, the first step in the planning process should be to make a visual representation of the page known as a [wireframe](https://en.wikipedia.org/wiki/Website_wireframe).

There are quite a few different approaches to making a wireframe, but the quickest and easiest way to make a simple wireframe is to draw it out on paper. Here is a drawing representing what we intend to make:

![Portfolio page wireframe](images/wireframe.jpg)

Now that we have a visual representation of the application we intend to build, we can start thinking about features that need to be completed, and plan out the size and placement of elements on the page.

## <div align="center">🚨🚨🚨 **AN IMPORTANT NOTE ON ELEMENT SIZING** 🚨🚨🚨</div>

When setting out to determine the size an element should take in a page layout, a common mistake for new developers is to plan for both height and width of an element. As a general rule, you should anticipate how much **_width_** an element should take up, but except in specific cases, **the height of an element should be determined by the size of its content**.

Since height is effectively infinite in a webpage, elements should be allowed to take up as much height as they need to show their contents to the user. One of the rare exceptions to this rule is in situations where your element would not have size if it is not directly given a height, such as an element with a background image but no content inside the element. We will see this situation in practice over the course of this project, but it is important to know that manually setting the height of an element is oftentimes not the right path to follow, and should be avoided unless you have a compelling reason to do so.

---

Now that we are ready to begin planning out the sizing and placement of the elements in the application, it's time to decide on how we want to accomplish this. If we set out to build the entire page at the same time, that would be a humongous task that would likely lead to more stress than progress.

When setting out to plan out the specifics of a webpage layout, it is extremely helpful to **break the page down** into individual sections. Based upon the wireframe we constructed above, we have some very clearly separated sections that we can use to break this layout down into individual objectives to tackle.

![Portfolio header wireframe](images/header.png)

A good place to start would be the page header, as seen above. The header section takes up a full horizontal row of the webpage, which makes it an easy structure to consider separately from the rest of the document. In fact, the rest of this project would probably be much easier to tackle if we consider each section of the page to be its own separate task to break down. Given that, we now know how we want to divide up the workload:

Now that we have a plan of action, let's start working through the header in the next [section](https://learning-fuze.github.io/exercise-assets/its-capstone-project/header).
