module Multiply exposing (..)

multiply lhs rhs = 
  { left = lhs
  , right = rhs
  }

to_s lhs rhs =
  toString lhs ++ " * " ++ toString rhs

is_reducible =
  True
  {--
reduce lhs rhs =
  case n of 
    is_reducible lhs -> Multiply.multiply Multiply.reduce lhs rhs
    is_reducible rhs -> Multiply.multiply lhs Multiply.reduce rhs
    _ -> Number.number (lhs.value + rhs.value) 
    --}



