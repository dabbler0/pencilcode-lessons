Modifying Arrays
================
Arrays can change as the program runs.

```
history = [] # Make an empty array to begin with
pen red
button 'forward', ->
  fd 50
  history.push 'forward' # Add "forward" to the array
button 'right', ->
  rt 90
  history.push 'right' # Add "right" to the array
button 'show history', ->
  write history
```

You can also remove elements from arrays.
```
history = []
pen red
button 'forward', ->
  fd 50
  history.push 'forward'
button 'right', ->
  rt 90
  history.push 'right'
button 'undo', ->
  move = history.pop() # Remove an element and see what it was
  write move
```

Tasks
-----
  1. Finish the "undo" program, and make it actually undo the move.
  2. Make your own program that can undo things. Idea: click anywhere on the screen to make a dot, press a button to undo the dot-making.
