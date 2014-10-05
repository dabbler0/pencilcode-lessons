Types of Turtles
================
We can make "types" of turtles by **subclassing**.
```
class DisobedientTurtle extends Turtle
  fd: -> # Override the "fd" command to mean something else
    @label "No" # Use @ to issue a command to yourself

a = new Turtle()
b = new DisobedientTurtle()

a.pen red
b.pen red

a.fd 100
b.fd 100 # Hey wait a minute
```

Tasks
-----
  1. Make your own kinds of turtles! Ideas: super-speedy turtle, always-moves-sideways turtle, always-looks-like-a-cat turtle.

Extra
-----
  1. Did you know? The `super` keyword can access the "normal" behaviour, even if you've overridden it.
     ```
     class ComplainingTurtle extends Turtle
       fd: ->
         @label 'No'
         super # Okay fine whatever

     a = new ComplainingTurtle()
     a.pen red

     # Everyone move forward
     fd 100
     a.fd 100 # Okay fine
     ```
  2. Did you know? The `constructor` method is special, and happens immediately when the turtle is created.
     ```
     class NestTurtle extends Turtle
       constructor: -> # Immediately when the turtle is made
         super # (gotta make sure the turtle's actually made)
         @dot brown, 100

     a = new NestTurtle()
     ```
