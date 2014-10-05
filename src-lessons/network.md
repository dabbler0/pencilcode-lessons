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

Look up the ANSI state codes to see what the state code numbers mean.

Tasks
-----
  1. Take some interesting statistics! Do some states have more male population that others? Does number households with children correlate to racial composition? Now you can find out!

Extra
-----
  1. Can you make a program to *automatically find correlations*? **Hint**: Yes you can. Come up with some programmatic way of determining whether two variables"correlate". Then make a program to test every pair of variables! People who have taken stats will be able to define "correlation" rigorously, but your method need not be rigorous. Try something out!
  2. There are many many many sources of data out there, along with some services that are not data (online storage services, online translation services) -- most of which we can interact with this way! Look for other internet resources. Known good ones: openweathermap API, the pencilcode load/save api (request to `/load/filename` and `/save/filename?data=asdljhasdfjklh`). **Hint**: You are looking for a "RESTful" API.
