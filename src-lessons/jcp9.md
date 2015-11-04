Making a Game
=============

Keyboard control:
```
forever ->
  if pressed 'up'
    fd 5
  if pressed 'right'
    rt 5
```

Mouse control:
```
forever ->
  turnto lastmousemove
  fd 5
```

Enemies:
```
b = new Turtle()
forever ->
  b.turnto turtle
  b.fd 5
```

Death (or victory):
```
b = new Turtle()
forever ->
  if touches b
    write 'You lose/win/something!'
    tick null
```

Tasks
-----
  1. Use these snippets to make a game. Some ideas: tag, race, dodgeball. Did you know? `touches red` tests to see if the turtle is touching red. Can you make some clever game using the turtle pen?
