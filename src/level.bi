'$Id$
#pragma once
#lang "fb"

type LEVELHDR
     magic as string * 3
     name as string * 50
     tilecount as integer
end type

type EVENT
     hp as integer
     xp as integer
     vp as integer
     item as integer            'index into items array
end type

type COORDS
     x as integer
     y as integer
end type

type TILE
     position as COORDS
     wall as byte               '1 = wall, 0 = open
     exit as string * 10        'this tile exits to this level file
     exit_to as COORDS
     
     'event indices
     on_enter as integer
     on_exit as integer
end type      

type level
     declare constructor (byval as string)
end type
                
