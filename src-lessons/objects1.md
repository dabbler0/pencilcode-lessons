Objects
=======
Objects are like dictionaries. They map keys to values.
```
dictionary = {
  'dictionary': 'A book with definitions'
  'program': 'Instructions a computer can follow'
  'aardwolf': 'Some kind of animal? does it look like a wolf'
  'cacodemomania': 'guys what does this mean'
  '1-iodo-3-methylpent-2-ene': 'guys seriously what'
}

write dictionary['program']
write dictionary['1-iodo-3-methylpent-2-ene']
```
You can also modify objects on-the-fly; each property is like a variable.
```
dictionary = {} # Empty object

dictionary['on-the-fly'] = 'While things are happening'
write dictionary['on-the-fly']
dictionary['on-the-fly'] = 'While the program is running'
write dictionary['on-the-fly']
```

Tasks
-----
  1. Use objects in your own project! Ideas:
    - Make a simple translator program. `read` in a sentence in French (or other language) and output English with words translated one-to-one (it will be a comically bad translation). **Hint**: `'hello world'.split(' ')` is `['hello', 'world']`.
    - Make a dictionary that the user can add definitions to and look up words in. A simple design might have and "add word" button and a "lookup" button that bring up inputs. **Hint**: Use `read` and `button`. You will need nested functions!

Extra
-----
  1. Did you know? For certain key values, you can just use "." instead of brackets: `dictionary.program` works the same as `dictionary['program']`. This only works for keys with no spaces or punctuation.
