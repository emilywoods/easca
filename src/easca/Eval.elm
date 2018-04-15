module Eval exposing (..)

import Env exposing (..)
import Exp exposing (Exp(..), Prog(..))


eval : Exp -> Env -> Int
eval exp env =
    case exp of
        -- Atoms
        Int exp ->
            exp

        String  str ->
          (env str)

        Boolean bool ->
            if (bool == True) then 1 else 0

        Variable  str ->
            (env str)

        -- Numeric Ops
        Add exp1 exp2 ->
            eval exp1 env + eval exp2 env

        Subtract exp1 exp2 ->
            eval exp1 env - eval exp2 env

        Multiply exp1 exp2 ->
            eval exp1 env * eval exp2 env

        -- Comparative
        Equal exp1 exp2 ->
            if (eval exp1 env == eval exp2 env) then 1 else 0

        LessThan exp1 exp2 ->
            if (eval exp1 env < eval exp2 env) then 1 else 0

        LessThanOrEqual exp1 exp2 ->
            if (eval exp1 env <= eval exp2 env) then 1 else 0

        GreaterThan exp1 exp2 ->
            if (eval exp1 env > eval exp2 env) then 1 else 0

        GreaterThanOrEqual exp1 exp2 ->
            if (eval exp1 env >= eval exp2 env) then 1 else 0


        -- Misc?
        Let str num  ->
            eval num env

        Return exp ->
            eval exp env

        IfElse exp outcome ->
            if (eval exp env) == 1 then (eval outcome env) else 0
        _ ->
            0

--evalProg : Prog -> Env -> Int
--evalProg prog env =
--      case prog of
--        If exp outcome ->
--            if (eval exp env) == 0 then (eval outcome env) else 0
--        _ ->
--            0


to_s : Exp -> String
to_s exp =
    toString (eval exp zero)
