Using a Function Inside Itself
=============================
This is called **recursion**.

```
square = (n) ->
  pen red
  for [1..4]
    fd n
    rt 90
  if n > 0 # Why do we need to check this?
    square n - 10 # Use the square function inside itself

square 100 # Why does this make 10 squares?
```

Tasks
-----
  1. Make this "cascade" pattern for your own shape.

Questions
---------
  1. Why does this make 10 squares? **Hint**: Try using `write(n)` somewhere in the function.
  2. What would happen if we removed the "if" statement? Why? **Hint**: Try it!

Extra
-----
  1. **Math challenge**: write a function to print out the *factorial* of a number. 5! is 1 \* 2 \* 3 \* 4 \* 5 = 120. You will need to use a `return` statement.
