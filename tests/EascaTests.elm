module EascaTests exposing (..)

import Easca
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    describe "Integration Tests"
        [ test "Given addition, then it evaluates and returns output as string" <|
            \_ -> Expect.equal "5" (Easca.interpret "2 + 3")
        ]
