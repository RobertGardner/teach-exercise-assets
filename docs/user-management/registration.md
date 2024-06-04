# User Registration

<progress value="1" max="3"></progress>

When a user registers, they provide credentials that they will use in the future to verify their identity (that is, when they authenticate themselves). In our simple security system, the credentials are a username and password. In more sophisticated systems, other or additional credentials are provided, such as a fingerprint or facial scan, an authorization token, and so forth. Since usernames and passwords are a challenge to remember, are unpleasant to use, and provide only limited security, much research is currently underway to provide more secure, simpler mechanisms. Those, however, are beyond the scope of this exercise.

To allow a user to register, a form in the client is needed where the user can enter their username and password. Also, an endpoint in the server is needed that will receive the username and password and properly store them in the database. For security reasons, the user's password is _never_ stored directly in the database. Instead, the password is first [hashed](https://computersciencewiki.org/index.php/Hashing) to jumble it before it is stored. [This short video](https://www.youtube.com/watch?v=cczlpiiu42M) on passwords and hash functions provides more information.

In summary, registration involves these steps:

1. Create a Sign In form in the client.
1. Create a sign-in endpoint in the server.
1. When the form is submitted, call the server sign-in endpoint with the username and password.
1. In the server, hash the password and create a new record in the "users" table with the username and hashed password.

## Complete Registration

1. Complete the implementation of the `POST /api/auth/sign-up` route in `server.ts` according to the provided pseudo-code.
1. In your browser, navigate to the client. Click the Sign Up button to view the registration form and register a new user.
1. Upon successful registration, the registration form will display an alert with the username and userId. As a convenience, it will also log to the browser console a `psql` command you can use to verify that the new user is stored in the database in the `"users"` table with a hashed password.
1. After the "success" alert, the user will be navigated to the sign-in page.

### Example Registration Request

```
POST /api/auth/sign-up HTTP/1.1
Content-Length: 45
Content-Type: application/json

{
    "password": "donkey",
    "username": "shrek"
}
```

### Example Registration Response

```
HTTP/1.1 201 Created
Content-Length: 70
Content-Type: application/json; charset=utf-8

{
    "createdAt": "2020-12-14T16:38:52.995Z",
    "userId": 3,
    "username": "shrek"
}
```

## Continue to Authentication ➡️

Once you are finished with the Registration steps, continue to [User Authentication](authentication.md).
