module IntegrationTests exposing (..)

import Add
import Expect exposing (Expectation)
import Multiply
import Number
import Test exposing (..)


suite : Test
suite =
    describe "Integration tests"
        [ describe "Multiplication is assigned with Numbers"
            [ test "It assigns a left and right value" <|
                \_ ->
                    let
                        x =
                            Number.new 2

                        y =
                            Number.new 4
                    in
                    Expect.equal { left = { value = 2 }, right = { value = 4 } } (Multiply.new x y)
            ]
        , describe "Addition is assigned with Numbers"
            [ test "It assigns a left and right value" <|
                \_ ->
                    let
                        x =
                            Number.new 2

                        y =
                            Number.new 4
                    in
                    Expect.equal { left = { value = 2 }, right = { value = 4 } } (Add.new x y)
            ]
        ]
