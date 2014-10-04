Making a Function with a Parameter
==================================
Functions can take **parameters**, which are variables that take on different values depending on how the function is called.

```
square = (n) ->
  pen red
  for [1..4]
    fd n # Use "n" like a variable
    rt 90

square(100) # Use the "square" function with n = 100
fd 100
square(50) # Use the "square" function with n = 50
```

Task
----
  1. Make your own shape resizable using a function and a parameter.

Extra
-----
  1. Did you know? The parentheses are optional in `square(100)`; you can write `square 100`, just like with `fd`, `rt`, and `lt`.
  2. Did you know? You can make your function act like `random` or `asin` (to use it in place of a number) by using the "return" statement:
     ```
     double = (n) ->
       return 2 * n

     pen red
     fd double(50) # Use double(50) in place of a number
     ```
     Try writing a unit-conversion function -- try converting inches on your screen (use a ruler) to pixels.
  2. Did you know? You can do:

     ```
     square = (n, c) -> # Two (or more) parameters!
       pen c # Use c in place of a color
       for [1..4]
         fd n
         rt 90
     square 80, green
     ```
     Try making your own shape recolorable, or adding your own kinds of parameters. You can even pass function names (like `fd`) using parameters!
