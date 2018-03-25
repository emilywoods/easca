module IntegrationTests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Multiply
import Add
import Number

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
                        Expect.equal { left = { value = 2 }, right = { value = 4 } } ( Multiply.new x y )


            ],
          describe "Addition is assigned with Numbers"
             [ test "It assigns a left and right value" <|
                 \_ ->
                     let
                         x =
                             Number.new 2
                         y =
                             Number.new 4
                     in
                         Expect.equal { left = { value = 2 }, right = { value = 4 } } ( Add.new x y )


             ]

        ]
