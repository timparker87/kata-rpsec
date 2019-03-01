# Kata-RSpec

## Setup

`rake db:setup`
`rails db:migrate`

## Testing with RSpec, mocks and stubs

## Exercise 1 - Model spec

Write a model spec for the `User` model. Add a method `age` which calculates the users age based on the user attribute `year_of_birth`

### tips

Use `attr_accessor` to define an attribute on the user, you can then do `User.new(year_of_birth: 1987)`

Think about some edge cases - what if they enter the current year? What if the year of birth is in the future - what should the output be?

Optional task - add a new attribute `dob` and method `age_in_days`

## Exercise 2 - Model stub vs. mock

Write a model spec for the `UserPayment` class. There is a single method `process` responsible for making a charge.

### 2.1 - write a simple spec that checks the response

We can simply check the response from the `process` method call

Notice any problems when running the spec? You can solve this by stubbing it out (see next step)

### 2.2 - stub out the call to payment

Stub out the internal call to Payment with a `double` and make the test pass.

This is better, but can you think of what could be improved here?

### 2.3 - mock out the call to payment

Using a `double`, mock out the call and add an additional expectation.

## Exercise 3 - Request spec

### `GET /users` endpoint spec

Write a request spec that tests the `/users` endpoint. The endpoint shoud return a JSON list of users, with the following attributes:
  - id
  - year_of_birth

### `POST /user` endpoint

TBD - request spec but a POST that does something :thinking_face:

## Resources

https://about.futurelearn.com/blog/stubs-mocks-spies-rspec

```
Mocks vs Stubs vs Spies
You’ll notice that in all of the above examples we’re using RSpec’s double helper. The main difference is in the type of assertions that we made, rather than the tool we used. Aren’t mocks, stubs and spies all different things?

I would argue that there’s a more helpful way of looking at it. To me, stubbing, mocking and spying are techniques rather than tools. Specifically, they’re different ways of making assertions while using test doubles. In the examples above, we’re using a single type of test double that supports multiple types of assertion.

When we wanted to verify a property of the return value of a method, we used stubbing to provide a consistent value to our test subject, so we could make a clear assertion about the value it returns.

When we wanted to verify a property of the communication between two objects, we used mocking to make assertions about the messages our test double received.

Finally, when we wanted to verify the same communication property as before, but make our assertions at the end of the test, we used spying.
```