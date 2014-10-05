Fields
======
"Types" of turtles can remember things via **fields**.

```
class GiveUpTurtle extends Turtle
  constructor: ->
    super
    @timesMoved = 0 # Make a new field called "timesMoved"

  fd: ->
    @timesMoved += 1
    if @timesMoved < 3
      super

a = new GiveUpTurtle()
a.pen red
for [1..10]
  a.dot red, 20
  a.fd 100
# Looks like our turtle ran out of gas.
```

Tasks
-----
  1. Use fields to improve your own "turtle type". Ideas: speedy turtle gets faster every time it moves, growing turtle gets bigger every time it moves, traitor turtle alternates color every time it moves.

Extra
-----
  1. Did you know? You can pass arguments to turtle instantiation:
     ```
     class BigTurtle extends Turtle
       constructor: (size) ->
         super() # Why do we need ()? Try removing.
                 # Also try `new Turtle 8`.
         @scale size

     a = new BigTurtle 2
     b = new BigTurtle 4
     c = new BigTurtle 8 # Oh my goodness
     ```
     Try making a `GiveUpTurtle` that can go different numbers of times depending on an argument passed to the constructor. For instance, `new GiveUpTurtle(10)` should be able to `fd` 10 times. **Hint**: you will need to store the argument in a field.
