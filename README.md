# Knight Moves

This project creates a function that returns the simplest possible set of moves that a knight in chess can travel from one board position to another. In chess, a knight can move forward two squares and then to the side one square, which gives a knight the ability to [eventually reach every square](https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Knight%27s_tour_anim_2.gif/250px-Knight%27s_tour_anim_2.gif). 

[This project](https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms) is part of the [The Odin Project](https://www.theodinproject.com) curriculum.

For example, given `@knight.knight_moves(["C", 3], ["D", 3])`, the program will return, 
~~~bash
"You made it in 3 moves! Here's your path:
[C, 3]
[A, 2]
[C, 1]
[D, 3]"
~~~

My solution for this problem relies on the principles of [breadth-first search](https://www.youtube.com/watch?v=86g8jAQug04) of a [binary search tree](https://en.wikipedia.org/wiki/Binary_search_tree). This application limits the exponential number of leaves (move options) created in each layer of the tree of possible moves, meaning that the tree doesn't get unreasonably deep before finding a solution. In addition, I added in some optimization to limit the addition of new nodes to only those that create moves to spaces that have not yet been visited. This limits redundancy in the tree, increasing the algorithm's performance.

## Development versions
 - Ruby 2.5.3
 - RSpec 3.8

## Using this code

1. Fork this repository on GitHub.
2. Clone your forked reposity onto your local computer.
3. To run the tests, you need to have `rspec` installed.
 - First, check to see if `rspec` is already installed by typing `rspec --version` into the command line.
 - If the response is similar to the following, then you already have `rspec` installed and can continue.
 ~~~bash
 RSpec 3.8
  - rspec-core 3.8.0
  - rspec-expectations 3.8.2
  - rspec-mocks 3.8.0
  - rspec-support 3.8.0
~~~
 - If you do not see output similar to the above, then you need to install `rspec` by typing `gem install rspec` into the command line.
 - Now, run `rspec --version` again to ensure that it installed correctly.
4. Use`cd` to move into the main directory and then run `rspec` to show the tests.