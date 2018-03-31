module Eval exposing (..)

import Exp exposing(Exp(..))
import Env exposing(..)

eval : Exp -> Env -> Int
eval exp env =
  case exp of
    Num num -> num
    Add exp1 exp2 ->
        (eval exp1 env) + (eval exp2 env)
    Subtract exp1 exp2 ->
        (eval exp1 env) - (eval exp2 env)
    Multiply exp1 exp2 ->
        (eval exp1 env) * (eval exp2 env)

