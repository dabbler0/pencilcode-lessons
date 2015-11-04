Infinite Turtles
=======
What if you want to control infinite turtles, like for a moving pattern or a shooting game? You need **arrays**.
```
everyone = [] # A list of all our turtles

forever 2, ->
  latest = new Turtle() # Make a new turtle
  everyone.push latest # Add it to the list

forever ->
  for person in everyone # Go to each turtle in our list
    person.fd 5 # Tell it to move forward
```
