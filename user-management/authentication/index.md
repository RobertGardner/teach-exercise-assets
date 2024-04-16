# User Authentication

<progress value="2" max="3"></progress>

A user [authenticates](https://en.wikipedia.org/wiki/Authentication) by providing the credentials they used when they registered. In our simple system, that means the user provides the same username and password. These credentials are sent from the client to the server, where the server compares them to what is stored in the database. The server does this by looking up the user's record by username and finds the hashed password stored in that record. If the username doesn't exist then the user cannot be authenticated. If the password provided to the user does not match that in the database then the user also cannot be authenticated.

When the user registered, we hashed the password and stored the hashed password with the user's username. Since a hashed password cannot (theoretically) be reversed to provide the original password, the server cannot simply compare the password provided by the user with what is stored in the database. Instead, the user-provided password is also hashed using the same algorithm and hash key, and the resulting hash is compared against that stored in the database.

In most web applications, simply sending a username and password to the server is only a part of the process. This is because HTTP servers do not remember the clients that they receive messages from. Once the request/response messages are sent and received, the conversation is over and the server has no way of knowing if the next request is from the same client or not. To avoid requiring that a client provide their credentials with every single request, most authentication strategies involve the server giving the client a "token" when they successfully prove their identity. This token is then sent from the client to the server on subsequent requests. The server uses the token to identify the user and confirm that they have been authenticated.

A token, sometimes referred to as a "bearer token", is somewhat analogous to a wristband that you'd be given at an event like a concert or a fair. It's proof that you've already paid to be at the event, and you just need to show it at the gate for the rest of the day instead of paying all over again.

Often a token contains information about the user, like what privileges they have. For this reason, security measures are put in place to prevent tokens from being tampered with. To go back to the event analogy, say that attendees over 21 receive a yellow wristband indicating that they are allowed to drink alcohol. However, attendees under 21 receive a blue wristband indicating that they are not. Essentially, someone under 21 could simply paint their wristband yellow and the event host wouldn't really have an easy way of telling the difference. This is problematic!

When a (securely programmed) server accepts valid credentials from a client and issues it a token, the token is [digitally signed](https://en.wikipedia.org/wiki/Digital_signature). This means that the server can verify _it_ generated the token and that it has not been modified. This way, when the client sends the token _back_ to the server, the server can verify that the token is legitimate and has not been tampered with.

In our simple security system, the server accepts credentials (a username and password) from a client and responds with a signed [JSON Web Token](https://en.wikipedia.org/wiki/JSON_Web_Token). The client sends this token back to the server in each subsequent request.

## Complete Authentication

1. Complete the implementation of the `POST /api/auth/sign-in` route in `server.ts` according to the provided pseudo-code.
1. In your browser, navigate to the client. Click the Sign In button to view the sign-in form and sign in with the user you created above.
1. Upon successful sign-in the Sign In form will store the returned user and the returned JWT token in Context, and also store the token in Session Storage using the key `'um.token'`. The app will also display the signed-in username and userId.
1. Be sure to thoroughly test your server to ensure that anything except a correct username and password results in a `401` response with the error message`'invalid login'`.

### Example Authentication Request

```
POST /api/auth/sign-in HTTP/1.1
Content-Length: 45
Content-Type: application/json

{
    "password": "password1",
    "username": "admin"
}
```

### Example Authentication Response

```
HTTP/1.1 200 OK
Content-Length: 196
Content-Type: application/json; charset=utf-8

{
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE2MDgxMzU0ODR9.-LKm5gsY30b8rhD-KJDXDH22cCWACvsbu1Tb6oNda8c",
    "user": {
        "userId": 1,
        "username": "admin"
    }
}
```

## Continue to Authorization ➡️

Once you are finished with the Authorization steps, continue to [User Authorization](../authorization/).
