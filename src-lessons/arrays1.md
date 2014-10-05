Arrays
======

An array is a list of things.
```
colors = [red, orange, yellow, green, blue]

for color in colors # Loop through all the elements in a list
  pen color
  fd 50
```

Tasks
-----
  1. Try using an array in your own project! Ideas:
    - make a multicolored lollipop head.
    - make an array of turtles, and have them all do the same things. For a better effect, move them to different places first, then have them do the same things.

Extra
-----
  1. Did you know? You can get elements of arrays directly:
     ```
     colors = [red, orange, yellow, green, blue]
     dot colors[0], 100 # The "0th" (first) element (red)
     dot colors[1], 50 # The "1th" (second) element (orange)
     ```
  2. Did you know? You can have arrays of arrays:
     ```
     sets = [
       [red, orange, yellow]
       [pink, blue, violet]
       [lightgreen, green, yellow]
       [pink, red, purple]
     ]
     for set in sets
       dot set[0], 30
       dot set[1], 20
       dot set[2], 10
       slide 30
     ```
     Use this in your project! Idea: make dots at different coordinates (0th element is the x coordinate, 1th element is the y coordinate), make multiple themes of "rainbow stripes".
