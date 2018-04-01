module EvalTests exposing (..)

import Env exposing (..)
import Eval
import Exp exposing (Exp(..))
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "The Eval module"
        [ test "It evaluates a number" <|
            \_ -> Expect.equal 11 (Eval.eval (Num 11) zero)
        , test "It evaluates addition" <|
            \_ ->
                Expect.equal 3 (Eval.eval (Add (Num 1) (Num 2)) zero)
        , test "It evaluates subtraction" <|
            \_ ->
                Expect.equal -1 (Eval.eval (Subtract (Num 1) (Num 2)) zero)
        , test "It evaluates multiplication" <|
            \_ ->
                Expect.equal 6 (Eval.eval (Multiply (Num 2) (Num 3)) zero)
        , test "to_s" <|
            \_ -> Expect.equal "2" (Eval.to_s (Num 2))
        ]
