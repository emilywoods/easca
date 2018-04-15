module Eval exposing (..)

import Env exposing (..)
import Exp exposing (Exp(..))


eval : Exp -> Env -> Int
eval exp env =
    case exp of
        Int exp ->
            exp

        String  str -> (env str)

        Boolean bool ->
            if (bool == True) then 1 else 0

        Add exp1 exp2 ->
            eval exp1 env + eval exp2 env

        Subtract exp1 exp2 ->
            eval exp1 env - eval exp2 env

        Multiply exp1 exp2 ->
            eval exp1 env * eval exp2 env

        LessThan exp1 exp2 ->
            if (eval exp1 env < eval exp2 env) then 1 else 0

        LessThanOrEqual exp1 exp2 ->
            if (eval exp1 env <= eval exp2 env) then 1 else 0

        GreaterThan exp1 exp2 ->
            if (eval exp1 env > eval exp2 env) then 1 else 0

        GreaterThanOrEqual exp1 exp2 ->
            if (eval exp1 env >= eval exp2 env) then 1 else 0
        _ ->
            0


to_s : Exp -> String
to_s exp =
    toString (eval exp zero)
