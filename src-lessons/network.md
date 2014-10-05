Using the Internet
==================
Don't we already know how to use the Internet? Not like this:
```
# We will fetch some data from the US Census by
# calling $.get on a url.
$.get 'http://api.census.gov/data/2010/sf1' +
      '?get=HCT0030003,PCT0120002&for=state:*', (data) ->
  for state in data # The US Census returns an array of arrays
    write state[0] # Number of households with children
    write state[1] # Total male population
```

Wow, lots of data! See in the program where we requested `HCT0030003` and `PCT0120002`? Those are the census variables we requested, "households with children" and "total male population". You can change those to whatever you like -- there is a big long list here: http://api.census.gov/data/2010/sf1/variables.html.

Look up the ANSI state codes to see what the state code number mean.

Tasks
-----
  1. Take some interesting statistics! Do some states have more male population that others? Does number households with children correlate to racial composition? Now you can find out!

Extra
-----
  1. Can you make a program to *automatically find correlations*? **Hint**: yes you can
