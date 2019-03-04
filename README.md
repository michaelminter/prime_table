# Coding Challenge

## Objective
* Write a program that prints out a multiplication table of the first 10 prime numbers.
* The program must run from the command line and print one table to STDOUT.
* The first row and column of the table should have 10 primes, with each cell containing the product of the primes for the corresponding row and column.

## Notes
* Consider complexity. How fast does your code run? How does it scale?
* Consider cases where we want more than N primes.
* Do not use the Prime class from stdlib (write your own code).
* Write tests. Demonstrate TDD/BDD.

## Guidelines:
* We value your time! The purpose of the challenge is to get a glimpse of how you approach software development and establish a common ground for technical discussion when you come in. We find that developers who spend 1-2 hours on a completed coding solution tend to have enough material for engaging conversation. If you finish faster, or end up spending more time on something interesting, great!
* It would be preferable if the solution was implemented in Ruby or Python.

## Install

Using RVM

```bash
rvm use 2.4.1@prime-table --create --ruby-version
```

Install bundler

```bash
$ gem install bundler
```

Bundle install gems

```bash
$ bundle install
```

## Running

```bash
$ ruby prime_table.rb
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
```

## Options

```bash
$ ruby prime_table.rb -h
Usage: prime_table.rb [options]
    -r, --rows=COUNT                 Number of rows
    -c, --columns=COUNT              Number of columns
    -o, --operator=OPERATOR          Mathematical operator for row-column matches
```

Example:

```bash
ruby prime_table.rb -r 5 -c 7 -o "+"
+----+----+----+----+----+----+----+----+
|    | 2  | 3  | 5  | 7  | 11 | 13 | 17 |
+----+----+----+----+----+----+----+----+
| 2  | 4  | 5  | 7  | 9  | 13 | 15 | 19 |
+----+----+----+----+----+----+----+----+
| 3  | 5  | 6  | 8  | 10 | 14 | 16 | 20 |
+----+----+----+----+----+----+----+----+
| 5  | 7  | 8  | 10 | 12 | 16 | 18 | 22 |
+----+----+----+----+----+----+----+----+
| 7  | 9  | 10 | 12 | 14 | 18 | 20 | 24 |
+----+----+----+----+----+----+----+----+
| 11 | 13 | 14 | 16 | 18 | 22 | 24 | 28 |
+----+----+----+----+----+----+----+----+
```

## Testing

```bash
$ rspec spec/lib/prime_table_spec.rb
```
