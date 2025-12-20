# Advent Of Code 2025

Another year of puzzles and solutions for [Advent Of Code](https://adventofcode.com/2025).

## Language of Solutions

My solutions will be done in [Ruby](https://www.ruby-lang.org/en/). I will be using [RSpec](https://relishapp.com/rspec/) to verify my solutions.

I will organize by Days, as they are presented on the AoC website.

## Days

* [Day 1: Secret Entrance](https://adventofcode.com/2025/day/1) ⭐️
* [Day 2: Gift Shop](https://adventofcode.com/2025/day/2)
* [Day 3: Lobby](https://adventofcode.com/2025/day/3)
* [Day 4: Printing Department](https://adventofcode.com/2025/day/4)
* [Day 5: Cafeteria](https://adventofcode.com/2025/day/5)
* [Day 6: Trash Compactor](https://adventofcode.com/2025/day/6)
* [Day 7: Laboratories](https://adventofcode.com/2025/day/7)
* [Day 8: Playground](https://adventofcode.com/2025/day/8)
* [Day 9: Movie Theater](https://adventofcode.com/2025/day/9)
* [Day 10: Factory](https://adventofcode.com/2025/day/10)
* [Day 11: Reactor](https://adventofcode.com/2025/day/11)
* [Day 12: Christmas Tree Farm](https://adventofcode.com/2025/day/12)
<!--
* Day 13:
* Day 14:
* Day 15:
* Day 16:
* Day 17:
* Day 18:
* Day 19:
* Day 20:
* Day 21:
* Day 22:
* Day 23:
* Day 24:
* Day 25:
-->

## Setup

This project is structured like my other AoC projects.

To check the solutions just run:

```
rake
```

### Structure

I used my AoC 2020 Implementation as inspiration. I have `Day` classes but I
elected to use them in a more OO manner, where I query the 'model' for the
answers requested by AoC. I'veV elected to have a `calculate` class method that
is the primary interface to the Day's challenges. Where appropriate I've
implemented Helper classes; they're tested separately.

The Test Specs will have an Examples context and a Exercises context.

The Fixtures directory will contain the input data for each exercise.

### Extra Gems

* [smart_init](https://rubygems.org/gems/smart_init): I have decided to evaluate
[smart_init](https://github.com/pawurb/smart_init) with this year's Advent of
Code. Years passed my `Day` models were initialized in the same manner. I don't
plan on changing that which, in my opinion, makes a good testing ground for the gem.
