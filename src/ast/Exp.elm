module Exp exposing (Exp(..))

type Exp = Num      Int
         | Add      Exp Exp
         | Multiply Exp Exp
