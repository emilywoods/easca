module Eval exposing (..)

import Env exposing (..)
import Exp exposing (Exp(..))


eval : Exp -> Env -> Int
eval exp env =
    case exp of
        Num exp ->
            exp

        Add exp1 exp2 ->
            eval exp1 env + eval exp2 env

        Subtract exp1 exp2 ->
            eval exp1 env - eval exp2 env

        Multiply exp1 exp2 ->
            eval exp1 env * eval exp2 env


to_s : Exp -> String
to_s exp =
    toString (eval exp zero)
