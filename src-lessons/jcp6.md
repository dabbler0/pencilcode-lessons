Events
=======

```
button 'Click me!', ->
  fd 100
```

You can click the button as many times as you like. Like with `for` loops, make sure everything is indented correctly.

```
button 'Click me!', ->
  bk 100
pen red
fd 100
```

Notice that, because `pen red` and `fd 100` are not indented, they happen right away. `bk 100` doesn't happen until you click the button.

Tasks
-----
  1. Try making a "remote-control" turtle. Have buttons for "move forward", "turn left", etc.

Extra
-----
  1. Try this:
     ```
     click ->
       fd 100
     ```
     It will happen when you click on the turtle. Try making a whack-a-mole game (remember `moveto random position`?).
