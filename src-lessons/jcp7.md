`Forever` and `If`
=====
Try this:

```
forever ->
  fd 5
  rt 2
```

`forever` will make the turtle do something repeatedly forever. Like with loops, make sure everything is indented properly.

Tasks
-----
  1. Can you figure out how to make the turtle move faster or slower? Hint: inside a `forever`, `speed` doesn't do anything.
  2. Can you figure out how to make the circle that the turtle goes in bigger or smaller?

Now try this:

```
forever ->
  if pressed 'up'
    fd 5
  rt 2
```

Make sure everything is indented properly: notice how `fd 10` only happens when the key is pressed, but `rt 1` happens all the time.

Tasks
-----
  1. Make a turtle that is controlled by the arrow keys -- move forward, back, and turn left and right.
  2. Be creative with that turtle! Ideas: make the space key give a speed boost, make the turtle draw and have keys change color.
