# Ascii_grid

[![Build Status](https://travis-ci.org/HArchitect/Ascii_grid.svg?branch=master)](https://travis-ci.org/HArchitect/Ascii_grid)
[![Gem Version](https://badge.fury.io/rb/ascii_grid.svg)](https://badge.fury.io/rb/ascii_grid)
![](https://ruby-gem-downloads-badge.herokuapp.com/ascii_grid/0.1.2?label=v0.1.2-downloads)
![](https://ruby-gem-downloads-badge.herokuapp.com/ascii_grid?type=total)

This is a ruby gem that will help you make grids in the terminal

requires ruby >= 2.0.0

## Install

This gem might change in the future. So it is recomended that you
use the bundler method listed below so you and anyone using your program gets the
right gem version.

### With bundler (Recomended)

Add the following line to your Gemfile:
```ruby
gem 'ascii_grid', '~> 0.1.2'
```

then run this command:

    $ bundle install


### Direct install 

To installl the latest version of the gem directly to your computer 
run this command:

    $ gem install ascii_grid

### Install from source

First you will need to get the source code. You can do this any way you want.
One way is by cloning it from GitHub. You can do so with this command:

    $ git clone https://github.com/HArchitect/Ascii_grid.git

Then you need to run these two commands to install it to your computer.

    $ gem build ascii_grid.gemspec
    $ gem install ./ascii_grid-0.1.2.gem


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
--------------------|-------------------- 
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

## Documentation

You can find more info here: http://www.rubydoc.info/gems/ascii_grid/0.1.2/Ascii_grid

Here is the homepage of the gem: https://rubygems.org/gems/ascii_grid
