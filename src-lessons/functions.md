Making a Function
=================
A **function** is a set of instructions that can be recalled and done again any time.

```
square = -> # Define a function, and call it "square"
  pen red # Everything inside the function must be indented.
  for [1..4]
    fd 100
    rt 90

square() # Use the "square" function
fd 100
square() # Use it again
```

Tasks
-----
  1. Make your own shape into a function and use it more than once.

Extra
-----
  1. Did you know? You can do
  ```
    move = ->
      fd 100

    button 'Move!', move # This button will make the turtle move
  ```
  The button will call the `move` function every time it is pressed. Try making a "remote-control" turtle!

  2. Did you know? You can do
  ```
    move = ->
      fd 100

    tick 1, move
  ```
  `move` will be called once per second.
