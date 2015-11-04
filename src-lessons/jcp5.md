Variables that Change
=====================

You can overwrite the value of `x`:
```
pen red
x = 50
fd x
rt 90
x = 100
fd x
```
First `x` is `50`, then it is `100`. You can use math when assigning variables:
```
pen red
x = 5 * 5
fd x
```
You can even use `x` itself; this will always refer to the **old** x. For instance, `x = x + 50` below **increases x by `50`**.
```
pen red
x = 50
fd x
rt 90
x = x + 50
fd x
```

Tasks
-----
  1. Use an increasing variable and a loop to make an outward spiral. What happens if you *multiply* `x` every time instead of *adding* to it?
