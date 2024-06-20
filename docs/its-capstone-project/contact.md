# Adding a Contact Form with FormSpree

For our next task, we will add a contact form to the portfolio page using FormSpree. This form will allow visitors to send messages directly to your email. Let's get started!

## About FormSpree

FormSpree is a service that allows you to easily add forms to your website and receive submissions directly to your email. To use FormSpree, you'll need to create a form on their platform and get a unique form ID.

### Getting Your FormSpree Form ID

1. Go to [FormSpree](https://formspree.io/).
1. Sign up for an account if you don't have one.
1. After logging in, click on "Create New Form".
1. Fill out **Form Name** and **Send emails to** fields.
1. Follow the steps to create a form, and you will receive a unique form ID.
1. Copy this form ID as you'll need to use it in the form's `action` attribute.

Now, let's start integrating the form into your portfolio.

## Basic HTML Structure

### Adding the Contact Form

1. Below the `div` element you created for the Technologies section, create another `div` element.
2. Add the following attributes and classes to the `div` we just created above:

   - `id="contact"`
   - `class="row justify-center align-center pb-50 contact-section"`

   This `div` will serve as the container for the contact form section.

3. **Add a Header for the Contact Section**: Inside the new `div`, add an `h1` element with the class `col-12` and the text content "CONTACT".

4. **Create the Form**: Below the `h1` element, add a `form` element with the following attributes:

   - `id="contact-form"`
   - `action="https://formspree.io/f/your-form-id"`
   - `method="POST"`
   - `class="col-6"`

   Remember to replace `"your-form-id"` with your actual FormSpree form ID.

5. **Add Form Fields**: Inside the `form` element, add the following form fields:

   - **Label and Input for Name**:
     - Add a `label` element with `for="name"` and text content "Name:".
     - Below the label, add an `input` element with `type="text"`, `id="name"`, `name="name"`, and `required` attributes.
   - **Label and Input for Email**:
     - Add a `label` element with `for="email"` and text content "Email:".
     - Below the label, add an `input` element with `type="email"`, `id="email"`, `name="_replyto"`, and `required` attributes.
   - **Label and Textarea for Message**:
     - Add a `label` element with `for="message"` and text content "Message:".
     - Below the label, add a `textarea` element with `id="message"`, `name="message"`, and `required` attributes.
   - **Submit Button**:
     - Add a `button` element with `type="submit"` and text content "Send".

6. **Add the Script Tag**: At the end of your `index.html` file, just before the closing `</body>` tag, add a `script` element with `src="script.js"`.

### Updating Navigation

1. **Add a Navigation Link**: Ensure there is a link to the contact section in your navigation menu. Find the `nav` element in the header and add a new `a` element for the contact section:
   - Add an `a` element with `href="#contact"` and `class="nav-item white-text"`, and set its text content to "Contact".

## Contact Form CSS

### Styling the Contact Section

1. **Open Your CSS File**: Open the `styles.css` file in your code editor.
2. **Add a CSS Rule for the Contact Section**:
   - Create a new CSS rule-set for the `.contact-section` class. This class will style the background and padding of the contact section container. Set the `background-color` property to `lightgrey`, and `border-radius` to `10px`.
3. **Style the Form**:
   - Create a new CSS rule-set for the `#contact-form` ID. This will ensure the form is displayed as a column. Set the `display` property to `flex` and `flex-direction` to `column`.
4. **Style the Form Labels**:
   - Create a new CSS rule-set for `#contact-form label` to add some margin and font-weight. Set the `margin-bottom` property to `5px` and `font-weight` to `bold`.
5. **Style the Form Inputs and Textarea**:
   - Create a new CSS rule-set for `#contact-form input` and `#contact-form textarea` to add padding, border-radius, and other styling. Set the `margin-bottom` property to `10px`, `padding` to `10px`, `border-radius` to `5px`, and `border` to `1px solid #ccc`.
6. **Style the Submit Button**:
   - Create a new CSS rule-set for `#contact-form button` to style the button. Set the `padding` property to `10px`, `border` to `none`, `border-radius` to `5px`, `background-color` to `darkslategrey`, `color` to `white`, and `cursor` to `pointer`.
   - Add a hover effect for the button by creating another rule-set for `#contact-form button:hover` and set the `background-color` to `steelblue`.

## Contact Form JavaScript

### Adding Form Validation

1. **Create a JavaScript File**: Create a new file named `script.js` in the same directory as your `index.html`.
2. **Add Form Validation Script**:
   - Start by getting the form element. Use `document.getElementById('contact-form')` to get the form element by its ID.
   - Add an event listener for the `submit` event on the form element. Use the `addEventListener` method and specify `submit` as the event and a function to handle the event.
   - Inside the event handler function, prevent the form from being submitted. Use `event.preventDefault()` to stop the form submission.
   - Get the values of the `name`, `email`, and `message` fields. Use `document.getElementById` to get each element by its ID and access the `value` property.
   - Check if any of the fields are empty. Use an `if` statement to check if `name`, `email`, or `message` is empty.
   - If any field is empty, display an alert with the message "Please fill in all fields." Use the `alert` function to display the message.
   - Be sure to `return` to exit the function if any of the fields are empty.

## Testing the Contact Form

1. **Open the HTML File in a Browser**: Open your `index.html` file in a web browser with liver server if you haven't yet. You can do this by right-clicking on the file and selecting "Open with live server".
1. **Navigate to the Contact Form**: Scroll down to the contact form section on your portfolio page.
1. **Fill Out the Form**: Enter a test name, email, and message in the respective fields.
1. **Submit the Form**: Click the "Send" button to submit the form.

### Checking Form Submission on FormSpree

1. **Log in to FormSpree**: Go to [FormSpree](https://formspree.io/) and log in to your account.
2. **Access Your Form Dashboard**: Once logged in, navigate to the dashboard where your forms are listed.
3. **View Submissions**: Click on the form you created to view the submissions. You should see the test submission you just made listed here.

### Testing Form Validation

1. **Open Your Browser Developer Tools**: Right-click on the page and select "Inspect" or press `Ctrl+Shift+I` (Windows/Linux) or `Cmd+Option+I` (Mac) to open the developer tools.
2. **Navigate to the Console Tab**: Click on the "Console" tab to see any error messages or logs.
3. **Test Empty Fields**: Try submitting the form without filling in all the fields to see if the validation works. You should see an alert message prompting you to fill in all fields, and the form should not be submitted.

### Troubleshooting

- **No Submissions in FormSpree**: If you do not see the submission in FormSpree, double-check the `action` attribute in your form. Ensure it contains the correct form ID.
- **Validation Issues**: If the form submits even when fields are empty, make sure the `script.js` file is correctly linked in your `index.html` and that there are no errors in the console.

By following these steps, you can confirm that the contact form is working correctly and submissions are being sent to FormSpree.

You are ready to move on to the next section: [Background Image](https://learning-fuze.github.io/exercise-assets/its-capstone-project/background). Cross-check your completed code with the code I have provided below before moving on.

## CODE QUALITY CHECK

With every step of this project, I will provide the completed code for what we have written at the bottom of the section as a reference. **PLEASE NOTE** that I am providing this code as a way for you to double check your completed code for each section after having written it. If you choose to copy my code without writing it yourself first, you are doing so at your own peril ☠️

### `index.html`:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Portfolio</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="layout.css">
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="container text-align-center">
    <header class="row justify-between align-center white-text page-header">
      <h1 class="col-4">Ada Lovelace</h1>
      <nav class="row col-6 justify-evenly">
        <a href="#about" class="nav-item white-text">About</a>
        <a href="#tech" class="nav-item white-text">Technologies</a>
        <a href="#projects" class="nav-item white-text">Projects</a>
        <a href="#contact" class="nav-item white-text">Contact</a>
      </nav>
    </header>
    <div class="row justify-center align-center white-text hero-image">
      <h1 class="student-name">ADA LOVELACE</h1>
    </div>
    <div id="about" class="row justify-evenly align-center pb-50 about-section">
      <h1 class="col-12">ABOUT ME</h1>
      <img src="assets/firstname-lastname.jpg" alt="Ada Lovelace portrait" class="about-image col-3">
      <div class="col-5 text-align-reset">
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere minus voluptatibus, deserunt nostrum enim
          commodi rerum provident architecto sint tenetur. Consequatur quia officiis atque exercitationem magnam, quo
          minus dolorem saepe.</p>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere minus voluptatibus, deserunt nostrum enim
          commodi rerum provident architecto sint tenetur. Consequatur quia officiis atque exercitationem magnam, quo
          minus dolorem saepe.</p>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere minus voluptatibus, deserunt nostrum enim
          commodi rerum provident architecto sint tenetur. Consequatur quia officiis atque exercitationem magnam, quo
          minus dolorem saepe.</p>
      </div>
    </div>
    <div id="tech" class="row justify-evenly pb-50 tech-section">
        <h1 class="col-12">TECHNOLOGIES</h1>
        <img src="assets/html-logo.png" alt="HTML 5 logo" class="col-1">
        <img src="assets/css-logo.png" alt="CSS 3 logo" class="col-1">
        <img src="assets/js-logo.png" alt="Javascript logo" class="col-1">
      </div>
    </div>
    <div id="projects" class="row justify-evenly pb-50 projects-section">
      <h1 class="col-12">MY PROJECTS</h1>
      <img src="assets/placeholder-project.png" alt="Placeholder image" class="col-2">
      <img src="assets/placeholder-project.png" alt="Placeholder image" class="col-2">
      <img src="assets/placeholder-project.png" alt="Placeholder image" class="col-2">
    </div>
    <div id="contact" class="row justify-center align-center pb-50 contact-section">
      <h1 class="col-12">CONTACT</h1>
      <form id="contact-form" action="https://formspree.io/f/your-form-id" method="POST" class="col-6">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="_replyto" required>

        <label for="message">Message:</label>
        <textarea id="message" name="message" required></textarea>

        <button type="submit">Send</button>
      </form>
    </div>
    <script src="script.js"></script>
  </div>
</body>
</html>
```

### `styles.css`:

```css
html {
  font-family: "Source Sans Pro", sans-serif;
}

.text-align-center {
  text-align: center;
}

.white-text {
  color: white;
}

.pb-50 {
  padding-bottom: 50px;
}

.justify-center {
  justify-content: center;
}

.justify-evenly {
  justify-content: space-evenly;
}

.justify-between {
  justify-content: space-between;
}

.align-center {
  align-items: center;
}

.page-header {
  background-color: darkslategrey;
}

.nav-item {
  text-decoration: none;
}

.nav-item:hover {
  color: steelblue;
}

.hero-image {
  background-color: #303b43;
  background-image: url("assets/lfz-logo.png");
  background-position: center;
  background-repeat: no-repeat;
  background-size: auto 80%;
  height: 350px;
}

.student-name {
  font-size: 80px;
  background-color: #303b43;
  border-top: 5px double white;
  border-bottom: 5px double white;
}

.about-section {
  background-color: whitesmoke;
}

.about-image {
  max-height: 80%;
  border: 6px solid slategray;
}

.text-align-reset {
  text-align: initial;
}

.tech-section {
  background-color: gainsboro;
}

.projects-section {
  background-color: snow;
}

.contact-section {
  background-color: lightgrey;
  border-radius: 10px;
}

#contact-form {
  display: flex;
  flex-direction: column;
}

#contact-form label {
  margin-bottom: 5px;
  font-weight: bold;
}

#contact-form input,
#contact-form textarea {
  margin-bottom: 10px;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
}

#contact-form button {
  padding: 10px;
  border: none;
  border-radius: 5px;
  background-color: darkslategrey;
  color: white;
  cursor: pointer;
}

#contact-form button:hover {
  background-color: steelblue;
}
```

### `script.js`:

```javascript
document
  .getElementById("contact-form")
  .addEventListener("submit", function (event) {
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const message = document.getElementById("message").value;

    if (!name || !email || !message) {
      alert("Please fill in all fields.");
      event.preventDefault(); // Prevent form submission
    }
  });
```
