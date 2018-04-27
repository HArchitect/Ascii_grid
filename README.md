# Ascii_grid

This is a ruby gem that will help you make grids in the terminal

## Install

Right now the best way to install the gem is to download the source code and run
these commands:

    gem build ascii_grid.gemspec
    sudo gem install ./ascii_grid-0.1.0.gem

## Usage

To use this gem just create an Ascii_grid object and then use the make_grid
method

```ruby
grid = Ascii_grid.new(20, 20, 10, 10)
grid.make_grid(1, 2, 4, -3)
```
This will output the following grid in the terminal:

```
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | @ + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
--------------------|---------------------
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + @ + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
+ + + + + + + + + + | + + + + + + + + + +
```