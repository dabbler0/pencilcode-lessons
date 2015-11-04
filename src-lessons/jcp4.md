Variables
=========

Remember the bulls-eye?
```
dot black, 60
dot white, 40
dot black, 20
```

How would we do the bulls-eye a random color?

```
dot (random color), 60
dot white, 40
dot (random color), 20
```

This doesn't work quite right, because the two colors are different. To make them the same, we have to use a **variable**:

```
x = random color
dot x, 60
dot white, 40
dot x, 20
```

`x = random color` **stores** the color in `x`, so that it is the same every time throughout the rest of the program.

Tasks
-----
  1. Try making a square that is a random size. You will need to make a random number, like `x = random 100`.
  2. Use this to make a symmetric random picture.
