Infinite Turtles
=======
What if you want to control infinite turtles, like for a moving pattern or a shooting game? You need **arrays**.
```
everyone = [] # A list of all our turtles

forever 2, ->
  t = new Turtle() # Make a new turtle
  everyone.push t # Add it to the list

forever ->
  for t in everyone # Go to each turtle in our list
    t.fd 5 # Tell it to move forward
```

Tasks
-----
  1. How do you make the turtles come out faster or slower? How do you make the turtles speed up or slow down?
  2. Make the turtles go in a circle instead of a line.
  3. Can you make the turtles come out in random colors? Where would you need to put this line?
     ```
     t.wear random color
     ```

Extra
-----
  1. Try incorporating this into your game. Some ideas: make infinite prizes appear in random places, make infinite enemies, have turtles shoot out of other turtles.
