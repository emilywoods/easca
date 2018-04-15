module EvalTests exposing (..)

import Env exposing (..)
import Eval
import Exp exposing (Exp(..), Prog(..))
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "The Eval module"
        [ test "It evaluates a number" <|
            \_ -> Expect.equal 11 (Eval.eval (Int 11) zero)
        , test "It evaluates addition" <|
            \_ ->
                Expect.equal 3 (Eval.eval (Add (Int 1) (Int 2)) zero)
        , test "It evaluates subtraction" <|
            \_ ->
                Expect.equal -1 (Eval.eval (Subtract (Int 1) (Int 2)) zero)
        , test "It evaluates multiplication" <|
            \_ ->
                Expect.equal 6 (Eval.eval (Multiply (Int 2) (Int 3)) zero)
        , test "to_s" <|
            \_ -> Expect.equal "2" (Eval.to_s (Int 2))
        , test "It evaluates Boolean True" <|
            \_ ->
                Expect.equal 1 (Eval.eval (Boolean True) zero)
        , test "It evaluates Boolean False" <|
            \_ ->
                Expect.equal 0 (Eval.eval (Boolean False) zero)
        , test "It evaluates Variable" <|
            \_ ->
                Expect.equal 0 (Eval.eval (Variable "hello") zero)
        , test "It evaluates equal to" <|
            \_ ->
                Expect.equal 1 (Eval.eval (Equal (Int 3) (Int 3)) zero)
        , test "It evaluates less than" <|
            \_ ->
                Expect.equal 1 (Eval.eval (LessThan (Int 2) (Int 3)) zero)
        , test "It evaluates less than or equal to" <|
            \_ -> Expect.equal 1 (Eval.eval (LessThanOrEqual (Int 3) (Int 3)) zero)
        , test "It evaluates greater than" <|
            \_ ->
                Expect.equal 1 (Eval.eval (GreaterThan (Int 3) (Int 2)) zero)
        , test "It evaluates greater than or equal to" <|
            \_ -> Expect.equal 0 (Eval.eval (GreaterThanOrEqual (Int 2) (Int 3)) zero)
        , test "It evaluates Return" <|
            \_ -> Expect.equal 3 (Eval.eval (Return (Int 3) ) zero)
        , test "It evaluates Let" <|
            \_ -> Expect.equal 3 (Eval.eval (Let (String "x") (Int 3)) zero)

        --- Programs
        , test "If" <|
            \_ -> Expect.equal 4 (Eval.eval (IfElse (GreaterThanOrEqual (Int 3) (Int 3)) (Int 4)) zero)
        ]


-- Tidy tests
-- Add no op instead of zero
--
