'$Id$
#pragma once
#lang "fb"

type LEVELHDR
     magic as string * 3
     name as string * 50
     tilecount as integer
end type

type TILE
     xpos as integer
     ypos as integer
     wall as byte
end type      

type level
     declare constructor (byval as string)
end type
                
