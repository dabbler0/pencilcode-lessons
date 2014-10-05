Closures
========
Since functions and command names are just like normal values, we can make a "function factory":
```
makeShapeFunction = (sides) ->
  shape = (n) -> # Create a function on-the-fly
    for [1..sides]
      fd n
      rt 360 / sides

  return shape # Return the new function we just created

# Use the "function factory" to create functions:
triangle = makeShapeFunction(3)
square = makeShapeFunction(4)
pentagon = makeShapeFunction(5)

# Use the new functions we just created:
pen red
triangle 100
square 100
pentagon 100
```

The concept of extra information being attached to a function (the `sides` variable, in this case) is called a **closure**.

Tasks
-----
  1. Try making a "function factory" like this, but for stars instead.

Extra
-----
  1. Can you make a function factory... *for function factories*? Yes, you can! Try making a function factory factory. One idea: the first factory decides what the sides of the polygon will look like, and the second factory decides how many sides it will have.
  2. Why not just have a `polygon` function that takes a bunch of parameters? Because with "function factories", you can fill out some of the arguments to a function, and not others. For instance, polygon function might say
  ```
  polygon(4, 100) # Make a square with side length 100
  ```
  Our "function factory" can just as easily say:
  ```
  makeShapeFunction(4)(100)
  ```
  But it can also do "partial application", and wait between passing arguments:
  ```
  f = makeShapeFunction(4)
  # ... do some other stuff ...
  f 100
  ```
  Using `makeShapeFunction` instead of `polygon` is called **currying**, named after Haskell Curry, who loved this kind of thing. You can Google him! He is famous. There is a programming language named after him.
