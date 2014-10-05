Making Your Own Classes
=======================
Classes don't just have to be turtles! You can make whatever types you want:
```
class FortuneTeller
  constructor: (choices) ->
    @choices = choices

  getFortune: ->
    card = random(0, @choices.length)
    return @choices[card]

a = new FortuneTeller(['Riches', 'Death', 'Sickness', 'Love'])
write a.getFortune()
write a.getFortune()
write a.getFortune()

b = new FortuneTeller(['Riches', 'Riches', 'Riches'])
write b.getFortune() # Oh what a relief
```

Tasks
----
  1. Subclass the `FortuneTeller`. Maybe make it always return Riches?
  2. Make your own class! Ideas:
    - an `Amoeba` class with an `a.split()` method that makes another `Amoeba` that is slightly different.
    - a `Color` class with an `a.mixWith(b)` method. **Hint**: pen `rgb(255, 0, 100)` set the pen color with 255 parts red, 0 parts green, and 100 parts blue.
    - for you mathy people, a `Matrix` class with an `a.multiply(b)` method, or even an `a.determinant()` method.
