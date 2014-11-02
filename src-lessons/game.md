Foundations of a Game
=====================
Keyboard control:
```
tick 60, ->
  if pressed 'up'
    fd 10
  if pressed 'right'
    rt 10
```

Mouse control:
```
tick 60, ->
  turnto lastmousemove
  fd 10
```

Enemy turtles:
```
enemy = new Turtle()
tick 60, ->
  enemy.turnto turtle # turtle is the original "main" turtle
  enemy.fd 10
```

Death:
```
tick 60, ->
  if touches enemy # Test if we are touching the enemy
    tick null # Stop the game
```

Tasks
-----
  1. Using the above code snippets, try writing a game of tag. **Hint**: `tick` can only be used once in your program. If you have multiple `tick`s, instead try putting all the code into one `tick`.
  2. Either improve your game of tag or write your own game. Ideas for improving this game:
    - Have a score that increases with time, and print out the score when you die
    - Have a "target" turtle that runs away, and your score increases when you hit it
  3. Ideas for writing your own game:
    - Did you know? You can do `touches red` to test if you are touching red. Can you do something clever with pen colors? For instance, a game of Snake.
    - Did you know? You can do `distance(enemy)` to get the numerical distance to another turtle. Can you do something clever with this? For instance, a two-player game where you can't get too far apart?
    - Did you know? You can do:
      ```
      click ->
        dot red, 100
      ```
      Try making a game of whack-a-mole.
