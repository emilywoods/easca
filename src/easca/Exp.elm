module Exp exposing (Exp(..))


type Exp
    = Int Int
    | Float Float
    | String String
    | Add Exp Exp
    | Subtract Exp Exp
    | Multiply Exp Exp
