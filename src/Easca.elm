module Easca exposing (..)

import Parser exposing (..)
import Machine exposing (..)


--Parses input
--Creates machine for reduction
--Reduces
--Returns ast and eval

--Takes input string from command line,
--tokenises it, builds an AST, and evaluates
--this. Returns the evaluated expression as
--a string.

interpret : String -> String
interpret input =
    Machine.reduce (Parser.parse input)





