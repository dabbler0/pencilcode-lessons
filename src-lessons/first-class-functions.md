First Class Functions
=====================
Functions and command names can be passed around as arguments!
```
square = (n) ->
  for [1..4]
    fd n
    rt 90

makeThree = (f) -> # f will be a function
  f 50 # Use whatever function "f" is
  fd 100
  f 50
  fd 100
  f 50

pen red
makeThree square # Call makeThree with f = square
```

Tasks
-----
  1. Make a function that takes a command as a parameter, then executes that command three times to make a trisymmetrical shape. For instance, `yourFunction fd` should make a normal triangle, and `yourFunction koch` should make the Koch snowflake.
