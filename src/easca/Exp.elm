module Exp exposing (Exp(..))


type Exp
    = Int Int
    | Float Float
    | Add Exp Exp
    | Subtract Exp Exp
    | Multiply Exp Exp
