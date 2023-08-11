# PAWN Simulator Application

CHART 8 * 8

## Requirements

- Ruby 3.0.0

- Libraries: Rspec, bundler

## Description

This application can read commands of the following form:

    PLACE X,Y,F,C
    MOVE X
    LEFT
    RIGHT
    REPORT

## Dependencies, Run and Test

- Dependencies: `bundle install`

- Run: `ruby pawn_simulator_game.rb`

- Test: `rspec spec/`


## Example:

a)

    PLACE 0,0,NORTH,BLACK
    LEFT
    REPORT


    Output: 0,0,WEST,BLACK
