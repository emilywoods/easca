module Ast exposing (..)

import Number
import Multiply
import Add

reduce ast env =
  :nothing

is_reducible expression =
  case expression of
    Number -> false
    Add -> true
    Multiply -> true
    _ -> false

