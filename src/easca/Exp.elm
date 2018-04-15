module Exp exposing (Exp(..))


type Exp
    = Int Int
    | Float Float
    | String String
    | Boolean Bool
    | Add Exp Exp
    | Subtract Exp Exp
    | Multiply Exp Exp
    | LessThan           Exp Exp
    | LessThanOrEqual    Exp Exp
    | GreaterThan        Exp Exp
    | GreaterThanOrEqual Exp Exp
