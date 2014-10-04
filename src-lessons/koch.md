Making the Koch Snowflake
=========================

```
koch = (n) ->
  if n > 1
    koch n / 3
    lt 60
    koch n / 3
    rt 120
    koch n / 3
    lt 60
    koch n / 3
  else
    fd 1

pen red
koch 100
```

Tasks
-----
  1. Make the real Koch snowflake, closed on all sides (Google for an image). **Hint**: Use `speed` to speed up your turtle drawing.

Extra
-----
  1. Try drawing another fractal -- good ones are the quadric cross, Sierpinski triangle, or Vicsek fractal (you can Google them). `wear '/img/fractal'` is cheating.
  2. Make up your own fractal!
