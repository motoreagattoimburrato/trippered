#!/usr/bin/env ruby

require 'ruby2d'

WIDTH = 500
HEIGHT = 1000

set width: WIDTH, height: HEIGHT, resizable: true, borderless: true
set title: "Rainfall v1", background: 'navy'

x_speed = 0
y_speed = 3

drop = Array(drop)

#drops_number = rand(100..WIDTH)
#drops_number.times do | num |
#  drop.push(Square.new(x: rand(0..640), y: 0, size: rand(1..10), color: 'aqua', opacity: 1, z: rand(1..5)))
#end

def drop_opacity()
  rand
end

def drop_x_pos(width)
  length = width - 1
  rand(0..length)
end

def drop_border_x_pos(drop_x_pos)
  drop_x_pos - 1
end

def drop_size()
  rand(1..10)
end

def drop_border_size(drop_size)
  drop_size + 3
end

def drop_border_depth()
  rand(1..5)
end

def drop_depth(drop_border_depth)
  drop_border_depth + 2
end

update do
  x_position = drop_x_pos(WIDTH)
  opacity = drop_opacity()
  depth = drop_border_depth()
  size = drop_size()

  drop.push(Square.new(
              x: x_position,
              y: 0,
              size: size,
              color: 'aqua',
              opacity: opacity,
              z: drop_depth(depth))
            )

  drop.push(Square.new(
              x: drop_border_x_pos(x_position),
              y: -1,
              size: drop_border_size(size),
              color: 'teal',
              opacity: opacity,
              z: depth)
            )

  drop.each do | pix |
    pix.x += x_speed
    pix.y += y_speed
    if pix.y % HEIGHT == 0
      pix.remove
    end
  end
end

show
