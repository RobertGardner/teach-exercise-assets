# User Authorization

<progress value="3" max="3"></progress>

[Authorization](https://en.wikipedia.org/wiki/Authorization) is how digital systems decide what data or functionality is available to their users. In the case of Web applications, this usually takes the form of verifying whether or not a client is authenticated and then optionally performing other checks, such as verifying the user can access the requested data.

During authentication, the client is given a token for use in subsequent requests. The token will contain some identifying information about the user, such as their user ID. If a client wishes to access some private data or perform a privileged operation on the server, it must include the token in the request message. This enables the server to verify whether or not the client is allowed to access the data or to perform the operation.

The HTTP protocol provides for sending authentication credentials in the [Authorization](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Authorization) header. JWT tokens are typically sent using the [Bearer Authentication scheme](https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication#authentication_schemes). The format of the header is `Bearer TOKEN`, where "Bearer" is a required word and "TOKEN" is the value of the JWT token. A single space between the two is required.

In our simple security system, authorization is performed in Express middleware, which retrieves the JWT token from the Authorization header, verifies that it is valid, and extracts the token payload, which will contain the user ID (and perhaps other information).

## Complete Authorization

Authorization is performed in `authorization-middleware.ts`, which exports the function `authMiddleware`. This middleware must be imported in `server.ts` and added to the applicable endpoints (as indicated below).

1. Note that the middleware function defined in `lib/error-middleware.ts` now handles errors caused by attempting to verify invalid JSON Web Tokens.
1. Complete the implementation of `lib/authorization-middleware.ts` according to the provided pseudo-code.
1. In `server.ts`, notice that each route that requires authorization (the URLs starting with `/api/todos`) expects there to be a `user` property on the `req` object.
1. Add the authorization middleware to each of the `todos` endpoints by passing it as the second argument to the routing function. For example:
   ```js
   app.get('/api/todos', authMiddleware, async (req, res, next) => {...});
   ```
1. Update the client `fetch` requests in `client/src/lib/data.ts` to send the JWT Token in the `Authorization` header:

   ```js
   const req = {
     headers: {
       Authorization: "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9",
     },
   };
   fetch("url", req);
   ```

   - Tip: Use the `readToken` function to get the token.

1. In your browser, navigate to the app. Make sure you can only see the Todos that you have created. Try signing in as a different user and verify that only that user's Todos are visible.

### Example Authorization Request

```
GET /api/todos HTTP/1.1
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsInVzZXJuYW1lIjoiYXV0b2RpZGFjdCIsImlhdCI6MTcwNTQyNjY1MH0.CPLhj3nOsZTCvVuExPqoj7SE4bm0g7oVVlwK0NBF92k
```

### Example Authorization Response

```
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

[
    {
        "createdAt": "2024-01-16T17:18:22.626Z",
        "isCompleted": false,
        "task": "Learn to code",
        "todoId": 1,
        "updatedAt": "2024-01-16T17:18:22.626Z",
        "userId": 1
    },
    {
        "createdAt": "2024-01-16T17:18:22.626Z",
        "isCompleted": false,
        "task": "Build projects",
        "todoId": 2,
        "updatedAt": "2024-01-16T17:18:22.626Z",
        "userId": 1
    }
]
```

## (Optional) Automatic Login

It is convenient for users to be able to stay logged in to your site even after they close the browser window. This is usually accomplished by storing information in Local Storage that can be used to automatically log the user in.

In our simple user management system, we store the `user` and JWT token in Local Storage. To automatically log the user in, when the application is first mounted a `useEffect` can check to see if the `user` and token are in Local Storage. If so, it can simply set the `user` and `token` state. It's that simple!

<details markdown="1">
<summary>Detailed steps</summary>

Complete automatic login with the following steps:

1. In `UserProvider` add a `useEffect` that runs on first mount and does the following:
   - Reads the user with `lib/readUser` and sets the `user` state to the returned value
   - Reads the token with `lib/readToken` and sets the `token` state to the returned value

</details>

This simple approach works well for practice projects. However, in a real project it would not provide enough security since the token in Local Storage could potentially be stolen and used to access the server. Among other security measures, the following might be implemented:

- Add an expiration date to the JWT token
- Encrypt the user and token before storing them in Local Storage

## Finish

**For `git` to work properly, your terminal needs to be within the root of your local repository.** You have been executing commands in your exercise directory, but it's time to return "up" one level. In your terminal, change directories with the `cd` command as shown in the example below. This will change which directory your future commands are executed in.

**`..` means "parent directory".**

```bash
cd ..
```

## Submitting Your Solution

When your solution is complete, submit a Pull Request on GitHub.

Detailed instructions can be found [**here**](https://lms.learningfuze.com/code-guides/Learning-Fuze/curriculum/submitting-your-solution).
