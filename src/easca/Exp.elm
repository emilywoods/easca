module Exp exposing (Exp(..), Prog(..) )


type Exp
    = Int Int
    | String String
    | Boolean Bool
    | Variable String
    | Float Float
    | Return Exp

    | Add Exp Exp
    | Subtract Exp Exp
    | Multiply Exp Exp
    | Let Exp Exp

    | LessThan           Exp Exp
    | LessThanOrEqual    Exp Exp
    | GreaterThan        Exp Exp
    | GreaterThanOrEqual Exp Exp
    | Equal              Exp Exp

    | IfElse Exp Exp


type Prog
    = While Exp Prog
    | For Exp Prog
    | Func Prog
