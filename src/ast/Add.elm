module Add exposing (..)

add lhs rhs = 
  { left = lhs
  , right = rhs
  }

to_s lhs rhs =
  toString lhs ++ " + " ++ toString rhs
