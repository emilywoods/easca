module EvalTests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Eval
import Exp exposing (Exp(..))
import Env exposing (..)

suite : Test
suite =
    describe "The Eval module"
            [ test "It evaluates a number" <|
                \_ ->  Expect.equal 11 (Eval.eval (Num 11) zero)

            , test "It evaluates a addition" <|
                \_ ->
                    Expect.equal 3 (Eval.eval (Add (Num 1) (Num 2) ) zero)
            ]

