module Exp exposing (Exp(..))

type Exp = Num      Int
         | Add      Exp Exp
         | Subtract Exp Exp
         | Multiply Exp Exp
         | _ Exp


